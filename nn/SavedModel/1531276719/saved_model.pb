óż
$ę#
:
Add
x"T
y"T
z"T"
Ttype:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
¶
AsString

input"T

output"
Ttype:
	2	
"
	precisionint’’’’’’’’’"

scientificbool( "
shortestbool( "
widthint’’’’’’’’’"
fillstring 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
S
	Bucketize

input"T

output"
Ttype:
2	"

boundarieslist(float)
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
B
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
”
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
b
InitializeTableV2
table_handle
keys"Tkey
values"Tval"
Tkeytype"
Tvaltype
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp

OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint’’’’’’’’’"	
Ttype"
TItype0	:
2	
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
ļ
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
D
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
¼
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.5.02
b'unknown'čŗ

global_step/Initializer/zerosConst*
value	B	 R *
_output_shapes
: *
dtype0	*
_class
loc:@global_step

global_step
VariableV2*
shared_name *
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
shape: *
	container 
²
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@global_step
j
global_step/readIdentityglobal_step*
T0	*
_output_shapes
: *
_class
loc:@global_step
f
PlaceholderPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’
U
ParseExample/ConstConst*
valueB *
_output_shapes
: *
dtype0
W
ParseExample/Const_1Const*
valueB *
_output_shapes
: *
dtype0
W
ParseExample/Const_2Const*
valueB *
_output_shapes
: *
dtype0
W
ParseExample/Const_3Const*
valueB *
_output_shapes
: *
dtype0
W
ParseExample/Const_4Const*
valueB *
_output_shapes
: *
dtype0
W
ParseExample/Const_5Const*
valueB *
_output_shapes
: *
dtype0
W
ParseExample/Const_6Const*
valueB *
_output_shapes
: *
dtype0
W
ParseExample/Const_7Const*
valueB *
_output_shapes
: *
dtype0
W
ParseExample/Const_8Const*
valueB *
_output_shapes
: *
dtype0
W
ParseExample/Const_9Const*
valueB *
_output_shapes
: *
dtype0
b
ParseExample/ParseExample/namesConst*
valueB *
_output_shapes
: *
dtype0
|
'ParseExample/ParseExample/sparse_keys_0Const*%
valueB BinstitutionalControl*
_output_shapes
: *
dtype0
m
'ParseExample/ParseExample/sparse_keys_1Const*
valueB Bstate*
_output_shapes
: *
dtype0
v
&ParseExample/ParseExample/dense_keys_0Const* 
valueB Bacceptance-rate*
_output_shapes
: *
dtype0
n
&ParseExample/ParseExample/dense_keys_1Const*
valueB Bact-avg*
_output_shapes
: *
dtype0
w
&ParseExample/ParseExample/dense_keys_2Const*!
valueB BbusinessRepScore*
_output_shapes
: *
dtype0
u
&ParseExample/ParseExample/dense_keys_3Const*
valueB Bcost-after-aid*
_output_shapes
: *
dtype0
z
&ParseExample/ParseExample/dense_keys_4Const*$
valueB BengineeringRepScore*
_output_shapes
: *
dtype0
q
&ParseExample/ParseExample/dense_keys_5Const*
valueB B
enrollment*
_output_shapes
: *
dtype0
r
&ParseExample/ParseExample/dense_keys_6Const*
valueB BoverallRank*
_output_shapes
: *
dtype0
|
&ParseExample/ParseExample/dense_keys_7Const*&
valueB Bpercent-receiving-aid*
_output_shapes
: *
dtype0
n
&ParseExample/ParseExample/dense_keys_8Const*
valueB Bsat-avg*
_output_shapes
: *
dtype0
n
&ParseExample/ParseExample/dense_keys_9Const*
valueB Btuition*
_output_shapes
: *
dtype0
Ł	
ParseExample/ParseExampleParseExamplePlaceholderParseExample/ParseExample/names'ParseExample/ParseExample/sparse_keys_0'ParseExample/ParseExample/sparse_keys_1&ParseExample/ParseExample/dense_keys_0&ParseExample/ParseExample/dense_keys_1&ParseExample/ParseExample/dense_keys_2&ParseExample/ParseExample/dense_keys_3&ParseExample/ParseExample/dense_keys_4&ParseExample/ParseExample/dense_keys_5&ParseExample/ParseExample/dense_keys_6&ParseExample/ParseExample/dense_keys_7&ParseExample/ParseExample/dense_keys_8&ParseExample/ParseExample/dense_keys_9ParseExample/ConstParseExample/Const_1ParseExample/Const_2ParseExample/Const_3ParseExample/Const_4ParseExample/Const_5ParseExample/Const_6ParseExample/Const_7ParseExample/Const_8ParseExample/Const_9*
sparse_types
2*N
dense_shapes>
<::::::::::*
Ndense
*¤
_output_shapes
:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:::’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
Nsparse*
Tdense
2

ß
Odnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/Bucketize	BucketizeParseExample/ParseExample:6*2

boundaries$
""    A   A  šA   B  HB  pB  B   B*
T0*'
_output_shapes
:’’’’’’’’’
ē
Mdnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/ToInt64CastOdnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/Bucketize*

DstT0	*'
_output_shapes
:’’’’’’’’’*

SrcT0

Sdnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/one_hot/ConstConst*
valueB
 *  ?*
_output_shapes
: *
dtype0

Udnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/one_hot/Const_1Const*
valueB
 *    *
_output_shapes
: *
dtype0

Sdnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/one_hot/depthConst*
value	B :	*
_output_shapes
: *
dtype0

Vdnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/one_hot/on_valueConst*
valueB
 *  ?*
_output_shapes
: *
dtype0

Wdnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/one_hot/off_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0

Mdnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/one_hotOneHotMdnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/ToInt64Sdnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/one_hot/depthVdnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/one_hot/on_valueWdnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/one_hot/off_value*
axis’’’’’’’’’*
T0*+
_output_shapes
:’’’’’’’’’	*
TI0	
Ų
Kdnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/ShapeShapeMdnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/one_hot*
out_type0*
T0*
_output_shapes
:
£
Ydnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
„
[dnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
„
[dnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
×
Sdnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/strided_sliceStridedSliceKdnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/ShapeYdnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/strided_slice/stack[dnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/strided_slice/stack_1[dnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*
new_axis_mask *

begin_mask *
_output_shapes
: *
ellipsis_mask 

Udnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/Reshape/shape/1Const*
value	B :	*
_output_shapes
: *
dtype0
Į
Sdnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/Reshape/shapePackSdnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/strided_sliceUdnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/Reshape/shape/1*

axis *
T0*
N*
_output_shapes
:
¼
Mdnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/ReshapeReshapeMdnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/one_hotSdnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’	
Ė
Gdnn/input_from_feature_columns/input_layer/act-avg_bucketized/Bucketize	BucketizeParseExample/ParseExample:7*&

boundaries
"   A  øA  ŠA  ąA  šA*
T0*'
_output_shapes
:’’’’’’’’’
×
Ednn/input_from_feature_columns/input_layer/act-avg_bucketized/ToInt64CastGdnn/input_from_feature_columns/input_layer/act-avg_bucketized/Bucketize*

DstT0	*'
_output_shapes
:’’’’’’’’’*

SrcT0

Kdnn/input_from_feature_columns/input_layer/act-avg_bucketized/one_hot/ConstConst*
valueB
 *  ?*
_output_shapes
: *
dtype0

Mdnn/input_from_feature_columns/input_layer/act-avg_bucketized/one_hot/Const_1Const*
valueB
 *    *
_output_shapes
: *
dtype0

Kdnn/input_from_feature_columns/input_layer/act-avg_bucketized/one_hot/depthConst*
value	B :*
_output_shapes
: *
dtype0

Ndnn/input_from_feature_columns/input_layer/act-avg_bucketized/one_hot/on_valueConst*
valueB
 *  ?*
_output_shapes
: *
dtype0

Odnn/input_from_feature_columns/input_layer/act-avg_bucketized/one_hot/off_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
Ł
Ednn/input_from_feature_columns/input_layer/act-avg_bucketized/one_hotOneHotEdnn/input_from_feature_columns/input_layer/act-avg_bucketized/ToInt64Kdnn/input_from_feature_columns/input_layer/act-avg_bucketized/one_hot/depthNdnn/input_from_feature_columns/input_layer/act-avg_bucketized/one_hot/on_valueOdnn/input_from_feature_columns/input_layer/act-avg_bucketized/one_hot/off_value*
axis’’’’’’’’’*
T0*+
_output_shapes
:’’’’’’’’’*
TI0	
Č
Cdnn/input_from_feature_columns/input_layer/act-avg_bucketized/ShapeShapeEdnn/input_from_feature_columns/input_layer/act-avg_bucketized/one_hot*
out_type0*
T0*
_output_shapes
:

Qdnn/input_from_feature_columns/input_layer/act-avg_bucketized/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0

Sdnn/input_from_feature_columns/input_layer/act-avg_bucketized/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0

Sdnn/input_from_feature_columns/input_layer/act-avg_bucketized/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
Æ
Kdnn/input_from_feature_columns/input_layer/act-avg_bucketized/strided_sliceStridedSliceCdnn/input_from_feature_columns/input_layer/act-avg_bucketized/ShapeQdnn/input_from_feature_columns/input_layer/act-avg_bucketized/strided_slice/stackSdnn/input_from_feature_columns/input_layer/act-avg_bucketized/strided_slice/stack_1Sdnn/input_from_feature_columns/input_layer/act-avg_bucketized/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*
new_axis_mask *

begin_mask *
_output_shapes
: *
ellipsis_mask 

Mdnn/input_from_feature_columns/input_layer/act-avg_bucketized/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
©
Kdnn/input_from_feature_columns/input_layer/act-avg_bucketized/Reshape/shapePackKdnn/input_from_feature_columns/input_layer/act-avg_bucketized/strided_sliceMdnn/input_from_feature_columns/input_layer/act-avg_bucketized/Reshape/shape/1*

axis *
T0*
N*
_output_shapes
:
¤
Ednn/input_from_feature_columns/input_layer/act-avg_bucketized/ReshapeReshapeEdnn/input_from_feature_columns/input_layer/act-avg_bucketized/one_hotKdnn/input_from_feature_columns/input_layer/act-avg_bucketized/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’
ģ
Pdnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/Bucketize	BucketizeParseExample/ParseExample:8*>

boundaries0
.",   @ĶĢ@   @ĶĢ,@  @@33S@  `@ĶĢl@  @ff@@*
T0*'
_output_shapes
:’’’’’’’’’
é
Ndnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/ToInt64CastPdnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/Bucketize*

DstT0	*'
_output_shapes
:’’’’’’’’’*

SrcT0

Tdnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/one_hot/ConstConst*
valueB
 *  ?*
_output_shapes
: *
dtype0

Vdnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/one_hot/Const_1Const*
valueB
 *    *
_output_shapes
: *
dtype0

Tdnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/one_hot/depthConst*
value	B :*
_output_shapes
: *
dtype0

Wdnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/one_hot/on_valueConst*
valueB
 *  ?*
_output_shapes
: *
dtype0

Xdnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/one_hot/off_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0

Ndnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/one_hotOneHotNdnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/ToInt64Tdnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/one_hot/depthWdnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/one_hot/on_valueXdnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/one_hot/off_value*
axis’’’’’’’’’*
T0*+
_output_shapes
:’’’’’’’’’*
TI0	
Ś
Ldnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/ShapeShapeNdnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/one_hot*
out_type0*
T0*
_output_shapes
:
¤
Zdnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
¦
\dnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
¦
\dnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
Ü
Tdnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/strided_sliceStridedSliceLdnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/ShapeZdnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/strided_slice/stack\dnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/strided_slice/stack_1\dnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*
new_axis_mask *

begin_mask *
_output_shapes
: *
ellipsis_mask 

Vdnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
Ä
Tdnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/Reshape/shapePackTdnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/strided_sliceVdnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/Reshape/shape/1*

axis *
T0*
N*
_output_shapes
:
æ
Ndnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/ReshapeReshapeNdnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/one_hotTdnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’
Ś
Ndnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/Bucketize	BucketizeParseExample/ParseExample:9*.

boundaries 
" `jF @F PĆF `źF øG @G PCG*
T0*'
_output_shapes
:’’’’’’’’’
å
Ldnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/ToInt64CastNdnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/Bucketize*

DstT0	*'
_output_shapes
:’’’’’’’’’*

SrcT0

Rdnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/one_hot/ConstConst*
valueB
 *  ?*
_output_shapes
: *
dtype0

Tdnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/one_hot/Const_1Const*
valueB
 *    *
_output_shapes
: *
dtype0

Rdnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/one_hot/depthConst*
value	B :*
_output_shapes
: *
dtype0

Udnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/one_hot/on_valueConst*
valueB
 *  ?*
_output_shapes
: *
dtype0

Vdnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/one_hot/off_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
ü
Ldnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/one_hotOneHotLdnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/ToInt64Rdnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/one_hot/depthUdnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/one_hot/on_valueVdnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/one_hot/off_value*
axis’’’’’’’’’*
T0*+
_output_shapes
:’’’’’’’’’*
TI0	
Ö
Jdnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/ShapeShapeLdnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/one_hot*
out_type0*
T0*
_output_shapes
:
¢
Xdnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
¤
Zdnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
¤
Zdnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
Ņ
Rdnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/strided_sliceStridedSliceJdnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/ShapeXdnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/strided_slice/stackZdnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/strided_slice/stack_1Zdnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*
new_axis_mask *

begin_mask *
_output_shapes
: *
ellipsis_mask 

Tdnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
¾
Rdnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/Reshape/shapePackRdnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/strided_sliceTdnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/Reshape/shape/1*

axis *
T0*
N*
_output_shapes
:
¹
Ldnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/ReshapeReshapeLdnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/one_hotRdnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’
š
Sdnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/Bucketize	BucketizeParseExample/ParseExample:10*>

boundaries0
.",   @ĶĢ@   @ĶĢ,@  @@33S@  `@ĶĢl@  @ff@@*
T0*'
_output_shapes
:’’’’’’’’’
ļ
Qdnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/ToInt64CastSdnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/Bucketize*

DstT0	*'
_output_shapes
:’’’’’’’’’*

SrcT0

Wdnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/one_hot/ConstConst*
valueB
 *  ?*
_output_shapes
: *
dtype0

Ydnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/one_hot/Const_1Const*
valueB
 *    *
_output_shapes
: *
dtype0

Wdnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/one_hot/depthConst*
value	B :*
_output_shapes
: *
dtype0

Zdnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/one_hot/on_valueConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
 
[dnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/one_hot/off_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0

Qdnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/one_hotOneHotQdnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/ToInt64Wdnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/one_hot/depthZdnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/one_hot/on_value[dnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/one_hot/off_value*
axis’’’’’’’’’*
T0*+
_output_shapes
:’’’’’’’’’*
TI0	
ą
Odnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/ShapeShapeQdnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/one_hot*
out_type0*
T0*
_output_shapes
:
§
]dnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
©
_dnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
©
_dnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
ė
Wdnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/strided_sliceStridedSliceOdnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/Shape]dnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/strided_slice/stack_dnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/strided_slice/stack_1_dnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*
new_axis_mask *

begin_mask *
_output_shapes
: *
ellipsis_mask 

Ydnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
Ķ
Wdnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/Reshape/shapePackWdnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/strided_sliceYdnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/Reshape/shape/1*

axis *
T0*
N*
_output_shapes
:
Č
Qdnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/ReshapeReshapeQdnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/one_hotWdnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’
ß
Jdnn/input_from_feature_columns/input_layer/enrollment_bucketized/Bucketize	BucketizeParseExample/ParseExample:11*6

boundaries(
&"$  zD ;E @E  śE @F @F `źF @G PCG*
T0*'
_output_shapes
:’’’’’’’’’
Ż
Hdnn/input_from_feature_columns/input_layer/enrollment_bucketized/ToInt64CastJdnn/input_from_feature_columns/input_layer/enrollment_bucketized/Bucketize*

DstT0	*'
_output_shapes
:’’’’’’’’’*

SrcT0

Ndnn/input_from_feature_columns/input_layer/enrollment_bucketized/one_hot/ConstConst*
valueB
 *  ?*
_output_shapes
: *
dtype0

Pdnn/input_from_feature_columns/input_layer/enrollment_bucketized/one_hot/Const_1Const*
valueB
 *    *
_output_shapes
: *
dtype0

Ndnn/input_from_feature_columns/input_layer/enrollment_bucketized/one_hot/depthConst*
value	B :
*
_output_shapes
: *
dtype0

Qdnn/input_from_feature_columns/input_layer/enrollment_bucketized/one_hot/on_valueConst*
valueB
 *  ?*
_output_shapes
: *
dtype0

Rdnn/input_from_feature_columns/input_layer/enrollment_bucketized/one_hot/off_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
č
Hdnn/input_from_feature_columns/input_layer/enrollment_bucketized/one_hotOneHotHdnn/input_from_feature_columns/input_layer/enrollment_bucketized/ToInt64Ndnn/input_from_feature_columns/input_layer/enrollment_bucketized/one_hot/depthQdnn/input_from_feature_columns/input_layer/enrollment_bucketized/one_hot/on_valueRdnn/input_from_feature_columns/input_layer/enrollment_bucketized/one_hot/off_value*
axis’’’’’’’’’*
T0*+
_output_shapes
:’’’’’’’’’
*
TI0	
Ī
Fdnn/input_from_feature_columns/input_layer/enrollment_bucketized/ShapeShapeHdnn/input_from_feature_columns/input_layer/enrollment_bucketized/one_hot*
out_type0*
T0*
_output_shapes
:

Tdnn/input_from_feature_columns/input_layer/enrollment_bucketized/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
 
Vdnn/input_from_feature_columns/input_layer/enrollment_bucketized/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
 
Vdnn/input_from_feature_columns/input_layer/enrollment_bucketized/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
¾
Ndnn/input_from_feature_columns/input_layer/enrollment_bucketized/strided_sliceStridedSliceFdnn/input_from_feature_columns/input_layer/enrollment_bucketized/ShapeTdnn/input_from_feature_columns/input_layer/enrollment_bucketized/strided_slice/stackVdnn/input_from_feature_columns/input_layer/enrollment_bucketized/strided_slice/stack_1Vdnn/input_from_feature_columns/input_layer/enrollment_bucketized/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*
new_axis_mask *

begin_mask *
_output_shapes
: *
ellipsis_mask 

Pdnn/input_from_feature_columns/input_layer/enrollment_bucketized/Reshape/shape/1Const*
value	B :
*
_output_shapes
: *
dtype0
²
Ndnn/input_from_feature_columns/input_layer/enrollment_bucketized/Reshape/shapePackNdnn/input_from_feature_columns/input_layer/enrollment_bucketized/strided_slicePdnn/input_from_feature_columns/input_layer/enrollment_bucketized/Reshape/shape/1*

axis *
T0*
N*
_output_shapes
:
­
Hdnn/input_from_feature_columns/input_layer/enrollment_bucketized/ReshapeReshapeHdnn/input_from_feature_columns/input_layer/enrollment_bucketized/one_hotNdnn/input_from_feature_columns/input_layer/enrollment_bucketized/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’

Š
kdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/institutionalControl_lookup/ConstConst*1
value(B&BprivateBproprietaryBpublic*
_output_shapes
:*
dtype0
¬
jdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/institutionalControl_lookup/SizeConst*
value	B :*
_output_shapes
: *
dtype0
³
qdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/institutionalControl_lookup/range/startConst*
value	B : *
_output_shapes
: *
dtype0
³
qdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/institutionalControl_lookup/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
ī
kdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/institutionalControl_lookup/rangeRangeqdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/institutionalControl_lookup/range/startjdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/institutionalControl_lookup/Sizeqdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/institutionalControl_lookup/range/delta*
_output_shapes
:*

Tidx0

mdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/institutionalControl_lookup/ToInt64Castkdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/institutionalControl_lookup/range*

DstT0	*
_output_shapes
:*

SrcT0
ü
pdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/institutionalControl_lookup/hash_tableHashTableV2*
	key_dtype0*
shared_name *
value_dtype0	*
use_node_name_sharing( *
_output_shapes
: *
	container 
Į
vdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/institutionalControl_lookup/hash_table/ConstConst*
valueB	 R
’’’’’’’’’*
_output_shapes
: *
dtype0	
ö
{dnn/input_from_feature_columns/input_layer/institutionalControl_indicator/institutionalControl_lookup/hash_table/table_initInitializeTableV2pdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/institutionalControl_lookup/hash_tablekdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/institutionalControl_lookup/Constmdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/institutionalControl_lookup/ToInt64*

Tval0	*

Tkey0
³
[dnn/input_from_feature_columns/input_layer/institutionalControl_indicator/hash_table_LookupLookupTableFindV2pdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/institutionalControl_lookup/hash_tableParseExample/ParseExample:2vdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/institutionalControl_lookup/hash_table/Const*	
Tin0*#
_output_shapes
:’’’’’’’’’*

Tout0	
°
ednn/input_from_feature_columns/input_layer/institutionalControl_indicator/SparseToDense/default_valueConst*
valueB	 R
’’’’’’’’’*
_output_shapes
: *
dtype0	
Ē
Wdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/SparseToDenseSparseToDenseParseExample/ParseExampleParseExample/ParseExample:4[dnn/input_from_feature_columns/input_layer/institutionalControl_indicator/hash_table_Lookupednn/input_from_feature_columns/input_layer/institutionalControl_indicator/SparseToDense/default_value*
T0	*
validate_indices(*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
Tindices0	

Wdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/one_hot/ConstConst*
valueB
 *  ?*
_output_shapes
: *
dtype0

Ydnn/input_from_feature_columns/input_layer/institutionalControl_indicator/one_hot/Const_1Const*
valueB
 *    *
_output_shapes
: *
dtype0

Wdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/one_hot/depthConst*
value	B :*
_output_shapes
: *
dtype0

Zdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/one_hot/on_valueConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
 
[dnn/input_from_feature_columns/input_layer/institutionalControl_indicator/one_hot/off_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
¤
Qdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/one_hotOneHotWdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/SparseToDenseWdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/one_hot/depthZdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/one_hot/on_value[dnn/input_from_feature_columns/input_layer/institutionalControl_indicator/one_hot/off_value*
axis’’’’’’’’’*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’*
TI0	
²
_dnn/input_from_feature_columns/input_layer/institutionalControl_indicator/Sum/reduction_indicesConst*
valueB:
ž’’’’’’’’*
_output_shapes
:*
dtype0
×
Mdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/SumSumQdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/one_hot_dnn/input_from_feature_columns/input_layer/institutionalControl_indicator/Sum/reduction_indices*
	keep_dims( *
T0*'
_output_shapes
:’’’’’’’’’*

Tidx0
Ü
Odnn/input_from_feature_columns/input_layer/institutionalControl_indicator/ShapeShapeMdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/Sum*
out_type0*
T0*
_output_shapes
:
§
]dnn/input_from_feature_columns/input_layer/institutionalControl_indicator/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
©
_dnn/input_from_feature_columns/input_layer/institutionalControl_indicator/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
©
_dnn/input_from_feature_columns/input_layer/institutionalControl_indicator/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
ė
Wdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/strided_sliceStridedSliceOdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/Shape]dnn/input_from_feature_columns/input_layer/institutionalControl_indicator/strided_slice/stack_dnn/input_from_feature_columns/input_layer/institutionalControl_indicator/strided_slice/stack_1_dnn/input_from_feature_columns/input_layer/institutionalControl_indicator/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*
new_axis_mask *

begin_mask *
_output_shapes
: *
ellipsis_mask 

Ydnn/input_from_feature_columns/input_layer/institutionalControl_indicator/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
Ķ
Wdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/Reshape/shapePackWdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/strided_sliceYdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/Reshape/shape/1*

axis *
T0*
N*
_output_shapes
:
Ä
Qdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/ReshapeReshapeMdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/SumWdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’
č
Kdnn/input_from_feature_columns/input_layer/overallRank_bucketized/Bucketize	BucketizeParseExample/ParseExample:12*>

boundaries0
.",       @   A   A   B  pB   B  ČB  šB  C  HC*
T0*'
_output_shapes
:’’’’’’’’’
ß
Idnn/input_from_feature_columns/input_layer/overallRank_bucketized/ToInt64CastKdnn/input_from_feature_columns/input_layer/overallRank_bucketized/Bucketize*

DstT0	*'
_output_shapes
:’’’’’’’’’*

SrcT0

Odnn/input_from_feature_columns/input_layer/overallRank_bucketized/one_hot/ConstConst*
valueB
 *  ?*
_output_shapes
: *
dtype0

Qdnn/input_from_feature_columns/input_layer/overallRank_bucketized/one_hot/Const_1Const*
valueB
 *    *
_output_shapes
: *
dtype0

Odnn/input_from_feature_columns/input_layer/overallRank_bucketized/one_hot/depthConst*
value	B :*
_output_shapes
: *
dtype0

Rdnn/input_from_feature_columns/input_layer/overallRank_bucketized/one_hot/on_valueConst*
valueB
 *  ?*
_output_shapes
: *
dtype0

Sdnn/input_from_feature_columns/input_layer/overallRank_bucketized/one_hot/off_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
ķ
Idnn/input_from_feature_columns/input_layer/overallRank_bucketized/one_hotOneHotIdnn/input_from_feature_columns/input_layer/overallRank_bucketized/ToInt64Odnn/input_from_feature_columns/input_layer/overallRank_bucketized/one_hot/depthRdnn/input_from_feature_columns/input_layer/overallRank_bucketized/one_hot/on_valueSdnn/input_from_feature_columns/input_layer/overallRank_bucketized/one_hot/off_value*
axis’’’’’’’’’*
T0*+
_output_shapes
:’’’’’’’’’*
TI0	
Š
Gdnn/input_from_feature_columns/input_layer/overallRank_bucketized/ShapeShapeIdnn/input_from_feature_columns/input_layer/overallRank_bucketized/one_hot*
out_type0*
T0*
_output_shapes
:

Udnn/input_from_feature_columns/input_layer/overallRank_bucketized/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
”
Wdnn/input_from_feature_columns/input_layer/overallRank_bucketized/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
”
Wdnn/input_from_feature_columns/input_layer/overallRank_bucketized/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
Ć
Odnn/input_from_feature_columns/input_layer/overallRank_bucketized/strided_sliceStridedSliceGdnn/input_from_feature_columns/input_layer/overallRank_bucketized/ShapeUdnn/input_from_feature_columns/input_layer/overallRank_bucketized/strided_slice/stackWdnn/input_from_feature_columns/input_layer/overallRank_bucketized/strided_slice/stack_1Wdnn/input_from_feature_columns/input_layer/overallRank_bucketized/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*
new_axis_mask *

begin_mask *
_output_shapes
: *
ellipsis_mask 

Qdnn/input_from_feature_columns/input_layer/overallRank_bucketized/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
µ
Odnn/input_from_feature_columns/input_layer/overallRank_bucketized/Reshape/shapePackOdnn/input_from_feature_columns/input_layer/overallRank_bucketized/strided_sliceQdnn/input_from_feature_columns/input_layer/overallRank_bucketized/Reshape/shape/1*

axis *
T0*
N*
_output_shapes
:
°
Idnn/input_from_feature_columns/input_layer/overallRank_bucketized/ReshapeReshapeIdnn/input_from_feature_columns/input_layer/overallRank_bucketized/one_hotOdnn/input_from_feature_columns/input_layer/overallRank_bucketized/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’
ę
Udnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/Bucketize	BucketizeParseExample/ParseExample:13*2

boundaries$
""    A   A  šA   B  HB  pB  B   B*
T0*'
_output_shapes
:’’’’’’’’’
ó
Sdnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/ToInt64CastUdnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/Bucketize*

DstT0	*'
_output_shapes
:’’’’’’’’’*

SrcT0

Ydnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/one_hot/ConstConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
 
[dnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/one_hot/Const_1Const*
valueB
 *    *
_output_shapes
: *
dtype0

Ydnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/one_hot/depthConst*
value	B :	*
_output_shapes
: *
dtype0
”
\dnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/one_hot/on_valueConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
¢
]dnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/one_hot/off_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0

Sdnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/one_hotOneHotSdnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/ToInt64Ydnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/one_hot/depth\dnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/one_hot/on_value]dnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/one_hot/off_value*
axis’’’’’’’’’*
T0*+
_output_shapes
:’’’’’’’’’	*
TI0	
ä
Qdnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/ShapeShapeSdnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/one_hot*
out_type0*
T0*
_output_shapes
:
©
_dnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
«
adnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
«
adnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
õ
Ydnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/strided_sliceStridedSliceQdnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/Shape_dnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/strided_slice/stackadnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/strided_slice/stack_1adnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*
new_axis_mask *

begin_mask *
_output_shapes
: *
ellipsis_mask 

[dnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/Reshape/shape/1Const*
value	B :	*
_output_shapes
: *
dtype0
Ó
Ydnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/Reshape/shapePackYdnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/strided_slice[dnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/Reshape/shape/1*

axis *
T0*
N*
_output_shapes
:
Ī
Sdnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/ReshapeReshapeSdnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/one_hotYdnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’	
Ü
Gdnn/input_from_feature_columns/input_layer/sat-avg_bucketized/Bucketize	BucketizeParseExample/ParseExample:14*6

boundaries(
&"$  /D  HD  aD  zD D  D ¢D  ÆD »D*
T0*'
_output_shapes
:’’’’’’’’’
×
Ednn/input_from_feature_columns/input_layer/sat-avg_bucketized/ToInt64CastGdnn/input_from_feature_columns/input_layer/sat-avg_bucketized/Bucketize*

DstT0	*'
_output_shapes
:’’’’’’’’’*

SrcT0

Kdnn/input_from_feature_columns/input_layer/sat-avg_bucketized/one_hot/ConstConst*
valueB
 *  ?*
_output_shapes
: *
dtype0

Mdnn/input_from_feature_columns/input_layer/sat-avg_bucketized/one_hot/Const_1Const*
valueB
 *    *
_output_shapes
: *
dtype0

Kdnn/input_from_feature_columns/input_layer/sat-avg_bucketized/one_hot/depthConst*
value	B :
*
_output_shapes
: *
dtype0

Ndnn/input_from_feature_columns/input_layer/sat-avg_bucketized/one_hot/on_valueConst*
valueB
 *  ?*
_output_shapes
: *
dtype0

Odnn/input_from_feature_columns/input_layer/sat-avg_bucketized/one_hot/off_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
Ł
Ednn/input_from_feature_columns/input_layer/sat-avg_bucketized/one_hotOneHotEdnn/input_from_feature_columns/input_layer/sat-avg_bucketized/ToInt64Kdnn/input_from_feature_columns/input_layer/sat-avg_bucketized/one_hot/depthNdnn/input_from_feature_columns/input_layer/sat-avg_bucketized/one_hot/on_valueOdnn/input_from_feature_columns/input_layer/sat-avg_bucketized/one_hot/off_value*
axis’’’’’’’’’*
T0*+
_output_shapes
:’’’’’’’’’
*
TI0	
Č
Cdnn/input_from_feature_columns/input_layer/sat-avg_bucketized/ShapeShapeEdnn/input_from_feature_columns/input_layer/sat-avg_bucketized/one_hot*
out_type0*
T0*
_output_shapes
:

Qdnn/input_from_feature_columns/input_layer/sat-avg_bucketized/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0

Sdnn/input_from_feature_columns/input_layer/sat-avg_bucketized/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0

Sdnn/input_from_feature_columns/input_layer/sat-avg_bucketized/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
Æ
Kdnn/input_from_feature_columns/input_layer/sat-avg_bucketized/strided_sliceStridedSliceCdnn/input_from_feature_columns/input_layer/sat-avg_bucketized/ShapeQdnn/input_from_feature_columns/input_layer/sat-avg_bucketized/strided_slice/stackSdnn/input_from_feature_columns/input_layer/sat-avg_bucketized/strided_slice/stack_1Sdnn/input_from_feature_columns/input_layer/sat-avg_bucketized/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*
new_axis_mask *

begin_mask *
_output_shapes
: *
ellipsis_mask 

Mdnn/input_from_feature_columns/input_layer/sat-avg_bucketized/Reshape/shape/1Const*
value	B :
*
_output_shapes
: *
dtype0
©
Kdnn/input_from_feature_columns/input_layer/sat-avg_bucketized/Reshape/shapePackKdnn/input_from_feature_columns/input_layer/sat-avg_bucketized/strided_sliceMdnn/input_from_feature_columns/input_layer/sat-avg_bucketized/Reshape/shape/1*

axis *
T0*
N*
_output_shapes
:
¤
Ednn/input_from_feature_columns/input_layer/sat-avg_bucketized/ReshapeReshapeEdnn/input_from_feature_columns/input_layer/sat-avg_bucketized/one_hotKdnn/input_from_feature_columns/input_layer/sat-avg_bucketized/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’

ć
Mdnn/input_from_feature_columns/input_layer/state_indicator/state_lookup/ConstConst*į
value×BŌ3BCABAZBDEBMDBFLBTXBMIBTNBLABGABALBPABOHBMSBKSBCOBINBARBIDBVABORBNVBILBMOBNEBNCBWIBMABKYBNJBCTBNYBNHBRIBDCBWABUTBSCBMNBIABOKBVTBHIBMEBWYBWVBNDBNMBAKBMTBSD*
_output_shapes
:3*
dtype0

Ldnn/input_from_feature_columns/input_layer/state_indicator/state_lookup/SizeConst*
value	B :3*
_output_shapes
: *
dtype0

Sdnn/input_from_feature_columns/input_layer/state_indicator/state_lookup/range/startConst*
value	B : *
_output_shapes
: *
dtype0

Sdnn/input_from_feature_columns/input_layer/state_indicator/state_lookup/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
ö
Mdnn/input_from_feature_columns/input_layer/state_indicator/state_lookup/rangeRangeSdnn/input_from_feature_columns/input_layer/state_indicator/state_lookup/range/startLdnn/input_from_feature_columns/input_layer/state_indicator/state_lookup/SizeSdnn/input_from_feature_columns/input_layer/state_indicator/state_lookup/range/delta*
_output_shapes
:3*

Tidx0
Ś
Odnn/input_from_feature_columns/input_layer/state_indicator/state_lookup/ToInt64CastMdnn/input_from_feature_columns/input_layer/state_indicator/state_lookup/range*

DstT0	*
_output_shapes
:3*

SrcT0
Ž
Rdnn/input_from_feature_columns/input_layer/state_indicator/state_lookup/hash_tableHashTableV2*
	key_dtype0*
shared_name *
value_dtype0	*
use_node_name_sharing( *
_output_shapes
: *
	container 
£
Xdnn/input_from_feature_columns/input_layer/state_indicator/state_lookup/hash_table/ConstConst*
valueB	 R
’’’’’’’’’*
_output_shapes
: *
dtype0	
ž
]dnn/input_from_feature_columns/input_layer/state_indicator/state_lookup/hash_table/table_initInitializeTableV2Rdnn/input_from_feature_columns/input_layer/state_indicator/state_lookup/hash_tableMdnn/input_from_feature_columns/input_layer/state_indicator/state_lookup/ConstOdnn/input_from_feature_columns/input_layer/state_indicator/state_lookup/ToInt64*

Tval0	*

Tkey0
č
Ldnn/input_from_feature_columns/input_layer/state_indicator/hash_table_LookupLookupTableFindV2Rdnn/input_from_feature_columns/input_layer/state_indicator/state_lookup/hash_tableParseExample/ParseExample:3Xdnn/input_from_feature_columns/input_layer/state_indicator/state_lookup/hash_table/Const*	
Tin0*#
_output_shapes
:’’’’’’’’’*

Tout0	
”
Vdnn/input_from_feature_columns/input_layer/state_indicator/SparseToDense/default_valueConst*
valueB	 R
’’’’’’’’’*
_output_shapes
: *
dtype0	

Hdnn/input_from_feature_columns/input_layer/state_indicator/SparseToDenseSparseToDenseParseExample/ParseExample:1ParseExample/ParseExample:5Ldnn/input_from_feature_columns/input_layer/state_indicator/hash_table_LookupVdnn/input_from_feature_columns/input_layer/state_indicator/SparseToDense/default_value*
T0	*
validate_indices(*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
Tindices0	

Hdnn/input_from_feature_columns/input_layer/state_indicator/one_hot/ConstConst*
valueB
 *  ?*
_output_shapes
: *
dtype0

Jdnn/input_from_feature_columns/input_layer/state_indicator/one_hot/Const_1Const*
valueB
 *    *
_output_shapes
: *
dtype0

Hdnn/input_from_feature_columns/input_layer/state_indicator/one_hot/depthConst*
value	B :3*
_output_shapes
: *
dtype0

Kdnn/input_from_feature_columns/input_layer/state_indicator/one_hot/on_valueConst*
valueB
 *  ?*
_output_shapes
: *
dtype0

Ldnn/input_from_feature_columns/input_layer/state_indicator/one_hot/off_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
Ł
Bdnn/input_from_feature_columns/input_layer/state_indicator/one_hotOneHotHdnn/input_from_feature_columns/input_layer/state_indicator/SparseToDenseHdnn/input_from_feature_columns/input_layer/state_indicator/one_hot/depthKdnn/input_from_feature_columns/input_layer/state_indicator/one_hot/on_valueLdnn/input_from_feature_columns/input_layer/state_indicator/one_hot/off_value*
axis’’’’’’’’’*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’3*
TI0	
£
Pdnn/input_from_feature_columns/input_layer/state_indicator/Sum/reduction_indicesConst*
valueB:
ž’’’’’’’’*
_output_shapes
:*
dtype0
Ŗ
>dnn/input_from_feature_columns/input_layer/state_indicator/SumSumBdnn/input_from_feature_columns/input_layer/state_indicator/one_hotPdnn/input_from_feature_columns/input_layer/state_indicator/Sum/reduction_indices*
	keep_dims( *
T0*'
_output_shapes
:’’’’’’’’’3*

Tidx0
¾
@dnn/input_from_feature_columns/input_layer/state_indicator/ShapeShape>dnn/input_from_feature_columns/input_layer/state_indicator/Sum*
out_type0*
T0*
_output_shapes
:

Ndnn/input_from_feature_columns/input_layer/state_indicator/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0

Pdnn/input_from_feature_columns/input_layer/state_indicator/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0

Pdnn/input_from_feature_columns/input_layer/state_indicator/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
 
Hdnn/input_from_feature_columns/input_layer/state_indicator/strided_sliceStridedSlice@dnn/input_from_feature_columns/input_layer/state_indicator/ShapeNdnn/input_from_feature_columns/input_layer/state_indicator/strided_slice/stackPdnn/input_from_feature_columns/input_layer/state_indicator/strided_slice/stack_1Pdnn/input_from_feature_columns/input_layer/state_indicator/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*
new_axis_mask *

begin_mask *
_output_shapes
: *
ellipsis_mask 

Jdnn/input_from_feature_columns/input_layer/state_indicator/Reshape/shape/1Const*
value	B :3*
_output_shapes
: *
dtype0
 
Hdnn/input_from_feature_columns/input_layer/state_indicator/Reshape/shapePackHdnn/input_from_feature_columns/input_layer/state_indicator/strided_sliceJdnn/input_from_feature_columns/input_layer/state_indicator/Reshape/shape/1*

axis *
T0*
N*
_output_shapes
:

Bdnn/input_from_feature_columns/input_layer/state_indicator/ReshapeReshape>dnn/input_from_feature_columns/input_layer/state_indicator/SumHdnn/input_from_feature_columns/input_layer/state_indicator/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’3
Š
Gdnn/input_from_feature_columns/input_layer/tuition_bucketized/Bucketize	BucketizeParseExample/ParseExample:15**

boundaries
" @F @F `źF @G PCG ŲVG*
T0*'
_output_shapes
:’’’’’’’’’
×
Ednn/input_from_feature_columns/input_layer/tuition_bucketized/ToInt64CastGdnn/input_from_feature_columns/input_layer/tuition_bucketized/Bucketize*

DstT0	*'
_output_shapes
:’’’’’’’’’*

SrcT0

Kdnn/input_from_feature_columns/input_layer/tuition_bucketized/one_hot/ConstConst*
valueB
 *  ?*
_output_shapes
: *
dtype0

Mdnn/input_from_feature_columns/input_layer/tuition_bucketized/one_hot/Const_1Const*
valueB
 *    *
_output_shapes
: *
dtype0

Kdnn/input_from_feature_columns/input_layer/tuition_bucketized/one_hot/depthConst*
value	B :*
_output_shapes
: *
dtype0

Ndnn/input_from_feature_columns/input_layer/tuition_bucketized/one_hot/on_valueConst*
valueB
 *  ?*
_output_shapes
: *
dtype0

Odnn/input_from_feature_columns/input_layer/tuition_bucketized/one_hot/off_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
Ł
Ednn/input_from_feature_columns/input_layer/tuition_bucketized/one_hotOneHotEdnn/input_from_feature_columns/input_layer/tuition_bucketized/ToInt64Kdnn/input_from_feature_columns/input_layer/tuition_bucketized/one_hot/depthNdnn/input_from_feature_columns/input_layer/tuition_bucketized/one_hot/on_valueOdnn/input_from_feature_columns/input_layer/tuition_bucketized/one_hot/off_value*
axis’’’’’’’’’*
T0*+
_output_shapes
:’’’’’’’’’*
TI0	
Č
Cdnn/input_from_feature_columns/input_layer/tuition_bucketized/ShapeShapeEdnn/input_from_feature_columns/input_layer/tuition_bucketized/one_hot*
out_type0*
T0*
_output_shapes
:

Qdnn/input_from_feature_columns/input_layer/tuition_bucketized/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0

Sdnn/input_from_feature_columns/input_layer/tuition_bucketized/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0

Sdnn/input_from_feature_columns/input_layer/tuition_bucketized/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
Æ
Kdnn/input_from_feature_columns/input_layer/tuition_bucketized/strided_sliceStridedSliceCdnn/input_from_feature_columns/input_layer/tuition_bucketized/ShapeQdnn/input_from_feature_columns/input_layer/tuition_bucketized/strided_slice/stackSdnn/input_from_feature_columns/input_layer/tuition_bucketized/strided_slice/stack_1Sdnn/input_from_feature_columns/input_layer/tuition_bucketized/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*
new_axis_mask *

begin_mask *
_output_shapes
: *
ellipsis_mask 

Mdnn/input_from_feature_columns/input_layer/tuition_bucketized/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
©
Kdnn/input_from_feature_columns/input_layer/tuition_bucketized/Reshape/shapePackKdnn/input_from_feature_columns/input_layer/tuition_bucketized/strided_sliceMdnn/input_from_feature_columns/input_layer/tuition_bucketized/Reshape/shape/1*

axis *
T0*
N*
_output_shapes
:
¤
Ednn/input_from_feature_columns/input_layer/tuition_bucketized/ReshapeReshapeEdnn/input_from_feature_columns/input_layer/tuition_bucketized/one_hotKdnn/input_from_feature_columns/input_layer/tuition_bucketized/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’
x
6dnn/input_from_feature_columns/input_layer/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
Ó
1dnn/input_from_feature_columns/input_layer/concatConcatV2Mdnn/input_from_feature_columns/input_layer/acceptance-rate_bucketized/ReshapeEdnn/input_from_feature_columns/input_layer/act-avg_bucketized/ReshapeNdnn/input_from_feature_columns/input_layer/businessRepScore_bucketized/ReshapeLdnn/input_from_feature_columns/input_layer/cost-after-aid_bucketized/ReshapeQdnn/input_from_feature_columns/input_layer/engineeringRepScore_bucketized/ReshapeHdnn/input_from_feature_columns/input_layer/enrollment_bucketized/ReshapeQdnn/input_from_feature_columns/input_layer/institutionalControl_indicator/ReshapeIdnn/input_from_feature_columns/input_layer/overallRank_bucketized/ReshapeSdnn/input_from_feature_columns/input_layer/percent-receiving-aid_bucketized/ReshapeEdnn/input_from_feature_columns/input_layer/sat-avg_bucketized/ReshapeBdnn/input_from_feature_columns/input_layer/state_indicator/ReshapeEdnn/input_from_feature_columns/input_layer/tuition_bucketized/Reshape6dnn/input_from_feature_columns/input_layer/concat/axis*
T0*
N*(
_output_shapes
:’’’’’’’’’*

Tidx0
Å
@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB"   
   *
_output_shapes
:*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
·
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *ZėF¾*
_output_shapes
: *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
·
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *ZėF>*
_output_shapes
: *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0

Hdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shape*
seed2 *2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
T0*
_output_shapes
:	
*
dtype0*

seed 

>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
­
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/sub*
T0*
_output_shapes
:	
*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0

:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
:	
*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
É
dnn/hiddenlayer_0/kernel/part_0
VariableV2*
shared_name *2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes
:	
*
dtype0*
shape:	
*
	container 

&dnn/hiddenlayer_0/kernel/part_0/AssignAssigndnn/hiddenlayer_0/kernel/part_0:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform*
T0*
_output_shapes
:	
*
use_locking(*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
Æ
$dnn/hiddenlayer_0/kernel/part_0/readIdentitydnn/hiddenlayer_0/kernel/part_0*
T0*
_output_shapes
:	
*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
®
/dnn/hiddenlayer_0/bias/part_0/Initializer/zerosConst*
valueB
*    *
_output_shapes
:
*
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0
»
dnn/hiddenlayer_0/bias/part_0
VariableV2*
shared_name *0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
_output_shapes
:
*
dtype0*
shape:
*
	container 
ž
$dnn/hiddenlayer_0/bias/part_0/AssignAssigndnn/hiddenlayer_0/bias/part_0/dnn/hiddenlayer_0/bias/part_0/Initializer/zeros*
T0*
_output_shapes
:
*
use_locking(*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0
¤
"dnn/hiddenlayer_0/bias/part_0/readIdentitydnn/hiddenlayer_0/bias/part_0*
T0*
_output_shapes
:
*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0
t
dnn/hiddenlayer_0/kernelIdentity$dnn/hiddenlayer_0/kernel/part_0/read*
T0*
_output_shapes
:	

Ē
dnn/hiddenlayer_0/MatMulMatMul1dnn/input_from_feature_columns/input_layer/concatdnn/hiddenlayer_0/kernel*
T0*
transpose_b( *
transpose_a( *'
_output_shapes
:’’’’’’’’’

k
dnn/hiddenlayer_0/biasIdentity"dnn/hiddenlayer_0/bias/part_0/read*
T0*
_output_shapes
:


dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMuldnn/hiddenlayer_0/bias*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’

k
dnn/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’

[
dnn/zero_fraction/zeroConst*
valueB
 *    *
_output_shapes
: *
dtype0

dnn/zero_fraction/EqualEqualdnn/hiddenlayer_0/Reludnn/zero_fraction/zero*
T0*'
_output_shapes
:’’’’’’’’’

x
dnn/zero_fraction/CastCastdnn/zero_fraction/Equal*

DstT0*'
_output_shapes
:’’’’’’’’’
*

SrcT0

h
dnn/zero_fraction/ConstConst*
valueB"       *
_output_shapes
:*
dtype0

dnn/zero_fraction/MeanMeandnn/zero_fraction/Castdnn/zero_fraction/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
 
2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_0/fraction_of_zero_values*
_output_shapes
: *
dtype0
«
-dnn/dnn/hiddenlayer_0/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsdnn/zero_fraction/Mean*
T0*
_output_shapes
: 

$dnn/dnn/hiddenlayer_0/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_0/activation*
_output_shapes
: *
dtype0

 dnn/dnn/hiddenlayer_0/activationHistogramSummary$dnn/dnn/hiddenlayer_0/activation/tagdnn/hiddenlayer_0/Relu*
T0*
_output_shapes
: 
Å
@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB"
      *
_output_shapes
:*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
·
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *č!æ*
_output_shapes
: *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
·
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *č!?*
_output_shapes
: *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0

Hdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shape*
seed2 *2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
T0*
_output_shapes

:
*
dtype0*

seed 

>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
¬
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/sub*
T0*
_output_shapes

:
*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0

:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*
T0*
_output_shapes

:
*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
Ē
dnn/hiddenlayer_1/kernel/part_0
VariableV2*
shared_name *2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:
*
dtype0*
shape
:
*
	container 

&dnn/hiddenlayer_1/kernel/part_0/AssignAssigndnn/hiddenlayer_1/kernel/part_0:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform*
T0*
_output_shapes

:
*
use_locking(*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
®
$dnn/hiddenlayer_1/kernel/part_0/readIdentitydnn/hiddenlayer_1/kernel/part_0*
T0*
_output_shapes

:
*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
®
/dnn/hiddenlayer_1/bias/part_0/Initializer/zerosConst*
valueB*    *
_output_shapes
:*
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0
»
dnn/hiddenlayer_1/bias/part_0
VariableV2*
shared_name *0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
_output_shapes
:*
dtype0*
shape:*
	container 
ž
$dnn/hiddenlayer_1/bias/part_0/AssignAssigndnn/hiddenlayer_1/bias/part_0/dnn/hiddenlayer_1/bias/part_0/Initializer/zeros*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0
¤
"dnn/hiddenlayer_1/bias/part_0/readIdentitydnn/hiddenlayer_1/bias/part_0*
T0*
_output_shapes
:*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0
s
dnn/hiddenlayer_1/kernelIdentity$dnn/hiddenlayer_1/kernel/part_0/read*
T0*
_output_shapes

:

¬
dnn/hiddenlayer_1/MatMulMatMuldnn/hiddenlayer_0/Reludnn/hiddenlayer_1/kernel*
T0*
transpose_b( *
transpose_a( *'
_output_shapes
:’’’’’’’’’
k
dnn/hiddenlayer_1/biasIdentity"dnn/hiddenlayer_1/bias/part_0/read*
T0*
_output_shapes
:

dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMuldnn/hiddenlayer_1/bias*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’
k
dnn/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’
]
dnn/zero_fraction_1/zeroConst*
valueB
 *    *
_output_shapes
: *
dtype0

dnn/zero_fraction_1/EqualEqualdnn/hiddenlayer_1/Reludnn/zero_fraction_1/zero*
T0*'
_output_shapes
:’’’’’’’’’
|
dnn/zero_fraction_1/CastCastdnn/zero_fraction_1/Equal*

DstT0*'
_output_shapes
:’’’’’’’’’*

SrcT0

j
dnn/zero_fraction_1/ConstConst*
valueB"       *
_output_shapes
:*
dtype0

dnn/zero_fraction_1/MeanMeandnn/zero_fraction_1/Castdnn/zero_fraction_1/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
 
2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_1/fraction_of_zero_values*
_output_shapes
: *
dtype0
­
-dnn/dnn/hiddenlayer_1/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsdnn/zero_fraction_1/Mean*
T0*
_output_shapes
: 

$dnn/dnn/hiddenlayer_1/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_1/activation*
_output_shapes
: *
dtype0

 dnn/dnn/hiddenlayer_1/activationHistogramSummary$dnn/dnn/hiddenlayer_1/activation/tagdnn/hiddenlayer_1/Relu*
T0*
_output_shapes
: 
·
9dnn/logits/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB"   -  *
_output_shapes
:*
dtype0*+
_class!
loc:@dnn/logits/kernel/part_0
©
7dnn/logits/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *c¾*
_output_shapes
: *
dtype0*+
_class!
loc:@dnn/logits/kernel/part_0
©
7dnn/logits/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *c>*
_output_shapes
: *
dtype0*+
_class!
loc:@dnn/logits/kernel/part_0

Adnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform9dnn/logits/kernel/part_0/Initializer/random_uniform/shape*
seed2 *+
_class!
loc:@dnn/logits/kernel/part_0*
T0*
_output_shapes
:	­*
dtype0*

seed 
ž
7dnn/logits/kernel/part_0/Initializer/random_uniform/subSub7dnn/logits/kernel/part_0/Initializer/random_uniform/max7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
: *+
_class!
loc:@dnn/logits/kernel/part_0

7dnn/logits/kernel/part_0/Initializer/random_uniform/mulMulAdnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniform7dnn/logits/kernel/part_0/Initializer/random_uniform/sub*
T0*
_output_shapes
:	­*+
_class!
loc:@dnn/logits/kernel/part_0

3dnn/logits/kernel/part_0/Initializer/random_uniformAdd7dnn/logits/kernel/part_0/Initializer/random_uniform/mul7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
:	­*+
_class!
loc:@dnn/logits/kernel/part_0
»
dnn/logits/kernel/part_0
VariableV2*
shared_name *+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes
:	­*
dtype0*
shape:	­*
	container 
ų
dnn/logits/kernel/part_0/AssignAssigndnn/logits/kernel/part_03dnn/logits/kernel/part_0/Initializer/random_uniform*
T0*
_output_shapes
:	­*
use_locking(*
validate_shape(*+
_class!
loc:@dnn/logits/kernel/part_0

dnn/logits/kernel/part_0/readIdentitydnn/logits/kernel/part_0*
T0*
_output_shapes
:	­*+
_class!
loc:@dnn/logits/kernel/part_0
¢
(dnn/logits/bias/part_0/Initializer/zerosConst*
valueB­*    *
_output_shapes	
:­*
dtype0*)
_class
loc:@dnn/logits/bias/part_0
Æ
dnn/logits/bias/part_0
VariableV2*
shared_name *)
_class
loc:@dnn/logits/bias/part_0*
_output_shapes	
:­*
dtype0*
shape:­*
	container 
ć
dnn/logits/bias/part_0/AssignAssigndnn/logits/bias/part_0(dnn/logits/bias/part_0/Initializer/zeros*
T0*
_output_shapes	
:­*
use_locking(*
validate_shape(*)
_class
loc:@dnn/logits/bias/part_0

dnn/logits/bias/part_0/readIdentitydnn/logits/bias/part_0*
T0*
_output_shapes	
:­*)
_class
loc:@dnn/logits/bias/part_0
f
dnn/logits/kernelIdentitydnn/logits/kernel/part_0/read*
T0*
_output_shapes
:	­

dnn/logits/MatMulMatMuldnn/hiddenlayer_1/Reludnn/logits/kernel*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:’’’’’’’’’­
^
dnn/logits/biasIdentitydnn/logits/bias/part_0/read*
T0*
_output_shapes	
:­

dnn/logits/BiasAddBiasAdddnn/logits/MatMuldnn/logits/bias*
T0*
data_formatNHWC*(
_output_shapes
:’’’’’’’’’­
]
dnn/zero_fraction_2/zeroConst*
valueB
 *    *
_output_shapes
: *
dtype0

dnn/zero_fraction_2/EqualEqualdnn/logits/BiasAdddnn/zero_fraction_2/zero*
T0*(
_output_shapes
:’’’’’’’’’­
}
dnn/zero_fraction_2/CastCastdnn/zero_fraction_2/Equal*

DstT0*(
_output_shapes
:’’’’’’’’’­*

SrcT0

j
dnn/zero_fraction_2/ConstConst*
valueB"       *
_output_shapes
:*
dtype0

dnn/zero_fraction_2/MeanMeandnn/zero_fraction_2/Castdnn/zero_fraction_2/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0

+dnn/dnn/logits/fraction_of_zero_values/tagsConst*7
value.B, B&dnn/dnn/logits/fraction_of_zero_values*
_output_shapes
: *
dtype0

&dnn/dnn/logits/fraction_of_zero_valuesScalarSummary+dnn/dnn/logits/fraction_of_zero_values/tagsdnn/zero_fraction_2/Mean*
T0*
_output_shapes
: 
w
dnn/dnn/logits/activation/tagConst**
value!B Bdnn/dnn/logits/activation*
_output_shapes
: *
dtype0

dnn/dnn/logits/activationHistogramSummarydnn/dnn/logits/activation/tagdnn/logits/BiasAdd*
T0*
_output_shapes
: 
g
dnn/head/logits/ShapeShapednn/logits/BiasAdd*
out_type0*
T0*
_output_shapes
:
k
)dnn/head/logits/assert_rank_at_least/rankConst*
value	B :*
_output_shapes
: *
dtype0
[
Sdnn/head/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
L
Ddnn/head/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
s
(dnn/head/predictions/class_ids/dimensionConst*
valueB :
’’’’’’’’’*
_output_shapes
: *
dtype0
³
dnn/head/predictions/class_idsArgMaxdnn/logits/BiasAdd(dnn/head/predictions/class_ids/dimension*
output_type0	*
T0*#
_output_shapes
:’’’’’’’’’*

Tidx0
n
#dnn/head/predictions/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
_output_shapes
: *
dtype0
°
dnn/head/predictions/ExpandDims
ExpandDimsdnn/head/predictions/class_ids#dnn/head/predictions/ExpandDims/dim*

Tdim0*
T0	*'
_output_shapes
:’’’’’’’’’
Ż
 dnn/head/predictions/str_classesAsStringdnn/head/predictions/ExpandDims*
	precision’’’’’’’’’*
shortest( *

scientific( *
T0	*'
_output_shapes
:’’’’’’’’’*

fill *
width’’’’’’’’’
t
"dnn/head/predictions/probabilitiesSoftmaxdnn/logits/BiasAdd*
T0*(
_output_shapes
:’’’’’’’’’­
p
dnn/head/ShapeShape"dnn/head/predictions/probabilities*
out_type0*
T0*
_output_shapes
:
f
dnn/head/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
h
dnn/head/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
h
dnn/head/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
¦
dnn/head/strided_sliceStridedSlicednn/head/Shapednn/head/strided_slice/stackdnn/head/strided_slice/stack_1dnn/head/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*
new_axis_mask *

begin_mask *
_output_shapes
: *
ellipsis_mask 
V
dnn/head/range/startConst*
value	B : *
_output_shapes
: *
dtype0
W
dnn/head/range/limitConst*
value
B :­*
_output_shapes
: *
dtype0
V
dnn/head/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0

dnn/head/rangeRangednn/head/range/startdnn/head/range/limitdnn/head/range/delta*
_output_shapes	
:­*

Tidx0
±
dnn/head/AsStringAsStringdnn/head/range*
	precision’’’’’’’’’*
shortest( *

scientific( *
T0*
_output_shapes	
:­*

fill *
width’’’’’’’’’
Y
dnn/head/ExpandDims/dimConst*
value	B : *
_output_shapes
: *
dtype0

dnn/head/ExpandDims
ExpandDimsdnn/head/AsStringdnn/head/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:	­
[
dnn/head/Tile/multiples/1Const*
value	B :*
_output_shapes
: *
dtype0

dnn/head/Tile/multiplesPackdnn/head/strided_slicednn/head/Tile/multiples/1*

axis *
T0*
N*
_output_shapes
:

dnn/head/TileTilednn/head/ExpandDimsdnn/head/Tile/multiples*
T0*(
_output_shapes
:’’’’’’’’’­*

Tmultiples0
P

save/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_9990a7e11f3f43819de71d7c7423cfda/part*
_output_shapes
: *
dtype0
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
_output_shapes
: *
dtype0

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/SaveV2/tensor_namesConst"/device:CPU:0*Ŗ
value BBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/logits/biasBdnn/logits/kernelBglobal_step*
_output_shapes
:*
dtype0
Ā
save/SaveV2/shape_and_slicesConst"/device:CPU:0*c
valueZBXB10 0,10B149 10 0,149:0,10B5 0,5B10 5 0,10:0,5B	301 0,301B5 301 0,5:0,301B *
_output_shapes
:*
dtype0
ę
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices"dnn/hiddenlayer_0/bias/part_0/read$dnn/hiddenlayer_0/kernel/part_0/read"dnn/hiddenlayer_1/bias/part_0/read$dnn/hiddenlayer_1/kernel/part_0/readdnn/logits/bias/part_0/readdnn/logits/kernel/part_0/readglobal_step"/device:CPU:0*
dtypes
	2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*
_output_shapes
: *'
_class
loc:@save/ShardedFilename
¬
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*

axis *
T0*
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
z
save/RestoreV2/tensor_namesConst*+
value"B Bdnn/hiddenlayer_0/bias*
_output_shapes
:*
dtype0
o
save/RestoreV2/shape_and_slicesConst*
valueBB10 0,10*
_output_shapes
:*
dtype0

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:

Ä
save/AssignAssigndnn/hiddenlayer_0/bias/part_0save/RestoreV2*
T0*
_output_shapes
:
*
use_locking(*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0
~
save/RestoreV2_1/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_0/kernel*
_output_shapes
:*
dtype0
{
!save/RestoreV2_1/shape_and_slicesConst*&
valueBB149 10 0,149:0,10*
_output_shapes
:*
dtype0

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:	

Ń
save/Assign_1Assigndnn/hiddenlayer_0/kernel/part_0save/RestoreV2_1*
T0*
_output_shapes
:	
*
use_locking(*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
|
save/RestoreV2_2/tensor_namesConst*+
value"B Bdnn/hiddenlayer_1/bias*
_output_shapes
:*
dtype0
o
!save/RestoreV2_2/shape_and_slicesConst*
valueBB5 0,5*
_output_shapes
:*
dtype0

save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
Č
save/Assign_2Assigndnn/hiddenlayer_1/bias/part_0save/RestoreV2_2*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0
~
save/RestoreV2_3/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_1/kernel*
_output_shapes
:*
dtype0
w
!save/RestoreV2_3/shape_and_slicesConst*"
valueBB10 5 0,10:0,5*
_output_shapes
:*
dtype0

save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes

:

Š
save/Assign_3Assigndnn/hiddenlayer_1/kernel/part_0save/RestoreV2_3*
T0*
_output_shapes

:
*
use_locking(*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
u
save/RestoreV2_4/tensor_namesConst*$
valueBBdnn/logits/bias*
_output_shapes
:*
dtype0
s
!save/RestoreV2_4/shape_and_slicesConst*
valueBB	301 0,301*
_output_shapes
:*
dtype0

save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes	
:­
»
save/Assign_4Assigndnn/logits/bias/part_0save/RestoreV2_4*
T0*
_output_shapes	
:­*
use_locking(*
validate_shape(*)
_class
loc:@dnn/logits/bias/part_0
w
save/RestoreV2_5/tensor_namesConst*&
valueBBdnn/logits/kernel*
_output_shapes
:*
dtype0
y
!save/RestoreV2_5/shape_and_slicesConst*$
valueBB5 301 0,5:0,301*
_output_shapes
:*
dtype0

save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:	­
Ć
save/Assign_5Assigndnn/logits/kernel/part_0save/RestoreV2_5*
T0*
_output_shapes
:	­*
use_locking(*
validate_shape(*+
_class!
loc:@dnn/logits/kernel/part_0
q
save/RestoreV2_6/tensor_namesConst* 
valueBBglobal_step*
_output_shapes
:*
dtype0
j
!save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2	*
_output_shapes
:
 
save/Assign_6Assignglobal_stepsave/RestoreV2_6*
T0	*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@global_step

save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6
-
save/restore_allNoOp^save/restore_shard

initNoOp
õ
init_all_tablesNoOp|^dnn/input_from_feature_columns/input_layer/institutionalControl_indicator/institutionalControl_lookup/hash_table/table_init^^dnn/input_from_feature_columns/input_layer/state_indicator/state_lookup/hash_table/table_init

init_1NoOp
4

group_depsNoOp^init^init_all_tables^init_1
R
save_1/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_7c500428865f4fd0a7682f9d10a80f54/part*
_output_shapes
: *
dtype0
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
_output_shapes
: *
dtype0

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 

save_1/SaveV2/tensor_namesConst"/device:CPU:0*Ŗ
value BBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/logits/biasBdnn/logits/kernelBglobal_step*
_output_shapes
:*
dtype0
Ä
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*c
valueZBXB10 0,10B149 10 0,149:0,10B5 0,5B10 5 0,10:0,5B	301 0,301B5 301 0,5:0,301B *
_output_shapes
:*
dtype0
ī
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices"dnn/hiddenlayer_0/bias/part_0/read$dnn/hiddenlayer_0/kernel/part_0/read"dnn/hiddenlayer_1/bias/part_0/read$dnn/hiddenlayer_1/kernel/part_0/readdnn/logits/bias/part_0/readdnn/logits/kernel/part_0/readglobal_step"/device:CPU:0*
dtypes
	2	
Ø
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*
_output_shapes
: *)
_class
loc:@save_1/ShardedFilename
²
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*

axis *
T0*
N*
_output_shapes
:

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
|
save_1/RestoreV2/tensor_namesConst*+
value"B Bdnn/hiddenlayer_0/bias*
_output_shapes
:*
dtype0
q
!save_1/RestoreV2/shape_and_slicesConst*
valueBB10 0,10*
_output_shapes
:*
dtype0

save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:

Č
save_1/AssignAssigndnn/hiddenlayer_0/bias/part_0save_1/RestoreV2*
T0*
_output_shapes
:
*
use_locking(*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0

save_1/RestoreV2_1/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_0/kernel*
_output_shapes
:*
dtype0
}
#save_1/RestoreV2_1/shape_and_slicesConst*&
valueBB149 10 0,149:0,10*
_output_shapes
:*
dtype0
„
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:	

Õ
save_1/Assign_1Assigndnn/hiddenlayer_0/kernel/part_0save_1/RestoreV2_1*
T0*
_output_shapes
:	
*
use_locking(*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
~
save_1/RestoreV2_2/tensor_namesConst*+
value"B Bdnn/hiddenlayer_1/bias*
_output_shapes
:*
dtype0
q
#save_1/RestoreV2_2/shape_and_slicesConst*
valueBB5 0,5*
_output_shapes
:*
dtype0
 
save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
Ģ
save_1/Assign_2Assigndnn/hiddenlayer_1/bias/part_0save_1/RestoreV2_2*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0

save_1/RestoreV2_3/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_1/kernel*
_output_shapes
:*
dtype0
y
#save_1/RestoreV2_3/shape_and_slicesConst*"
valueBB10 5 0,10:0,5*
_output_shapes
:*
dtype0
¤
save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes

:

Ō
save_1/Assign_3Assigndnn/hiddenlayer_1/kernel/part_0save_1/RestoreV2_3*
T0*
_output_shapes

:
*
use_locking(*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
w
save_1/RestoreV2_4/tensor_namesConst*$
valueBBdnn/logits/bias*
_output_shapes
:*
dtype0
u
#save_1/RestoreV2_4/shape_and_slicesConst*
valueBB	301 0,301*
_output_shapes
:*
dtype0
”
save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes	
:­
æ
save_1/Assign_4Assigndnn/logits/bias/part_0save_1/RestoreV2_4*
T0*
_output_shapes	
:­*
use_locking(*
validate_shape(*)
_class
loc:@dnn/logits/bias/part_0
y
save_1/RestoreV2_5/tensor_namesConst*&
valueBBdnn/logits/kernel*
_output_shapes
:*
dtype0
{
#save_1/RestoreV2_5/shape_and_slicesConst*$
valueBB5 301 0,5:0,301*
_output_shapes
:*
dtype0
„
save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:	­
Ē
save_1/Assign_5Assigndnn/logits/kernel/part_0save_1/RestoreV2_5*
T0*
_output_shapes
:	­*
use_locking(*
validate_shape(*+
_class!
loc:@dnn/logits/kernel/part_0
s
save_1/RestoreV2_6/tensor_namesConst* 
valueBBglobal_step*
_output_shapes
:*
dtype0
l
#save_1/RestoreV2_6/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
dtypes
2	*
_output_shapes
:
¤
save_1/Assign_6Assignglobal_stepsave_1/RestoreV2_6*
T0	*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@global_step

save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"õ
table_initializerß
Ü
{dnn/input_from_feature_columns/input_layer/institutionalControl_indicator/institutionalControl_lookup/hash_table/table_init
]dnn/input_from_feature_columns/input_layer/state_indicator/state_lookup/hash_table/table_init" 
legacy_init_op


group_deps"

	variables


X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
Ū
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign&dnn/hiddenlayer_0/kernel/part_0/read:0"(
dnn/hiddenlayer_0/kernel
  "
2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:0
Ć
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign$dnn/hiddenlayer_0/bias/part_0/read:0"!
dnn/hiddenlayer_0/bias
 "
21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:0
Ł
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign&dnn/hiddenlayer_1/kernel/part_0/read:0"&
dnn/hiddenlayer_1/kernel
  "
2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:0
Ć
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign$dnn/hiddenlayer_1/bias/part_0/read:0"!
dnn/hiddenlayer_1/bias "21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:0
ø
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assigndnn/logits/kernel/part_0/read:0"!
dnn/logits/kernel­  "­25dnn/logits/kernel/part_0/Initializer/random_uniform:0
¢
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assigndnn/logits/bias/part_0/read:0"
dnn/logits/bias­ "­2*dnn/logits/bias/part_0/Initializer/zeros:0" 
global_step

global_step:0"Į	
trainable_variables©	¦	
Ū
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign&dnn/hiddenlayer_0/kernel/part_0/read:0"(
dnn/hiddenlayer_0/kernel
  "
2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:0
Ć
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign$dnn/hiddenlayer_0/bias/part_0/read:0"!
dnn/hiddenlayer_0/bias
 "
21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:0
Ł
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign&dnn/hiddenlayer_1/kernel/part_0/read:0"&
dnn/hiddenlayer_1/kernel
  "
2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:0
Ć
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign$dnn/hiddenlayer_1/bias/part_0/read:0"!
dnn/hiddenlayer_1/bias "21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:0
ø
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assigndnn/logits/kernel/part_0/read:0"!
dnn/logits/kernel­  "­25dnn/logits/kernel/part_0/Initializer/random_uniform:0
¢
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assigndnn/logits/bias/part_0/read:0"
dnn/logits/bias­ "­2*dnn/logits/bias/part_0/Initializer/zeros:0"
	summariesō
ń
/dnn/dnn/hiddenlayer_0/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_0/activation:0
/dnn/dnn/hiddenlayer_1/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_1/activation:0
(dnn/dnn/logits/fraction_of_zero_values:0
dnn/dnn/logits/activation:0*ź
predictŽ
,
examples 
Placeholder:0’’’’’’’’’E
	class_ids8
!dnn/head/predictions/ExpandDims:0	’’’’’’’’’M
probabilities<
$dnn/head/predictions/probabilities:0’’’’’’’’’­D
classes9
"dnn/head/predictions/str_classes:0’’’’’’’’’6
logits,
dnn/logits/BiasAdd:0’’’’’’’’’­tensorflow/serving/predict*Ł
serving_defaultÅ
*
inputs 
Placeholder:0’’’’’’’’’2
classes'
dnn/head/Tile:0’’’’’’’’’­F
scores<
$dnn/head/predictions/probabilities:0’’’’’’’’’­tensorflow/serving/classify*Ų
classificationÅ
*
inputs 
Placeholder:0’’’’’’’’’2
classes'
dnn/head/Tile:0’’’’’’’’’­F
scores<
$dnn/head/predictions/probabilities:0’’’’’’’’’­tensorflow/serving/classify