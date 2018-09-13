import tensorflow as tf
import pandas as pd
from sklearn.preprocessing import LabelEncoder
import os

os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'

# training flags

encoder = LabelEncoder()


def input_fn(features, batch_size):
    dataset = tf.data.Dataset.from_tensor_slices((dict(features)))
    return dataset.batch(batch_size)


def bucketized(name, boundary):
    numeric = tf.feature_column.numeric_column(key=name)
    bucketized_numeric = tf.feature_column.bucketized_column(
        source_column=numeric,
        boundaries=boundary)
    return bucketized_numeric


def predict(data, top):
    BASE = os.path.dirname(os.path.abspath(__file__))

    data_path = os.path.join(BASE, "data.xlsx")
    train_features = pd.read_excel(data_path, sheet_name="train",
                                   usecols=[3, 6, 7, 12, 14, 15, 16, 26, 27, 28, 34, 35]).reset_index(drop=True)
    train_label = pd.read_excel(data_path, sheet_name="train", usecols=[29]).reset_index(drop=True)

    encoder.fit(train_label.values.ravel())
    states = train_features.state.unique()
    isPublic = train_features.institutionalControl.unique()
    name_univ = train_label.displayName.unique()
    num_univ = len(name_univ)

    columns = [bucketized("act-avg", [20, 23, 26, 28, 30]),
               bucketized("sat-avg", [700, 800, 900, 1000, 1100, 1200, 1300, 1400, 1500]),
               bucketized("enrollment", [1000, 3000, 5000, 8000, 10000, 20000, 30000, 40000, 50000]),
               bucketized("acceptance-rate", [10, 20, 30, 40, 50, 60, 70, 80]),
               bucketized("percent-receiving-aid", [10, 20, 30, 40, 50, 60, 70, 80]),
               bucketized("businessRepScore", [2, 2.2, 2.5, 2.7, 3.0, 3.3, 3.5, 3.7, 4.0, 4.2, 4.3]),
               bucketized("engineeringRepScore", [2, 2.2, 2.5, 2.7, 3.0, 3.3, 3.5, 3.7, 4.0, 4.2, 4.3]),
               bucketized("cost-after-aid", [15000, 20000, 25000, 30000, 35000, 40000, 50000]),
               bucketized("tuition", [10000, 20000, 30000, 40000, 50000, 55000]),
               bucketized("overallRank", [0, 5, 10, 20, 40, 60, 80, 100, 120, 150, 200]),
               tf.feature_column.indicator_column(
                   tf.feature_column.categorical_column_with_vocabulary_list("state", vocabulary_list=states)),
               tf.feature_column.indicator_column(
                   tf.feature_column.categorical_column_with_vocabulary_list("institutionalControl",
                                                                             vocabulary_list=isPublic))]

    model = tf.estimator.DNNClassifier(
        hidden_units=[10, 5],
        feature_columns=columns,
        optimizer=tf.train.AdamOptimizer(0.002),
        n_classes=num_univ,
        dropout=0.05,
        model_dir=os.path.join(BASE, "SavedModel/")
    )

    predict_features = pd.DataFrame([data], columns=["act-avg", "sat-avg", "enrollment",
                                                     "acceptance-rate", "percent-receiving-aid",
                                                     "businessRepScore", "engineeringRepScore",
                                                     "cost-after-aid", "tuition", "overallRank",
                                                     "state", "institutionalControl"])

    predictions = model.predict(input_fn=lambda: input_fn(predict_features, batch_size=predict_features.shape[0]))

    for n, x in enumerate(predictions):
        index = x['probabilities'].argsort()[-top:][::-1]
        univ = list(encoder.inverse_transform(index))
        return univ

