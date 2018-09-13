from django import forms
from django.core.exceptions import ValidationError


class Form(forms.Form):
    act_avg = forms.IntegerField(help_text="Enter ACT Score from 0 to 36")
    sat_avg = forms.IntegerField(help_text="Enter SAT Score from 0 to 2400")
    enrollment = forms.IntegerField(help_text="Enter number of students enroll")
    acceptance_rate = forms.IntegerField(help_text="Enter the percentage of students got accepted by the university")
    percent_receiving_aid = forms.IntegerField(help_text="Enter the percentage of students receiving financial aid")
    cost_after_aid = forms.IntegerField(help_text="Enter the cost after financial aids")
    tuition = forms.IntegerField(help_text="Enter the amount of tuition in dollars")
    business_rep_score = forms.FloatField(help_text="Enter the Business Reputation Score. Score from 0.0 to 5.0")
    engineering_rep_score = forms.FloatField(help_text="Enter the Engineering Reputation Score. from 0.0 to 5.0")
    rank = forms.IntegerField(help_text="Enter ranking. Rank must be bigger than 0")
    state = forms.CharField(help_text="Enter capitalized, abbreviated state name")
    institutional_control = forms.ChoiceField(choices=(('Public', 'public'), ('Private', 'private')))
    top = forms.IntegerField(help_text="The number of universities shown after the fitting process")

    def clean(self):
        cleaned_data = super(Form, self).clean()
        if cleaned_data['act_avg'] > 36 or cleaned_data['act_avg'] < 0:
            raise ValidationError('Invalid ACT Score, must be from 0 to 36')

        if cleaned_data['sat_avg'] > 2400 or cleaned_data['sat_avg'] < 0:
            raise ValidationError('Invalid SAT Score, must be from 0 to 2400')

        if cleaned_data['acceptance_rate'] > 100 or cleaned_data['acceptance_rate'] < 0:
            raise ValidationError('Invalid Acceptance Rate, must be from 0 to 100')

        if cleaned_data['business_rep_score'] > 2400 or cleaned_data['business_rep_score'] < 0:
            raise ValidationError('Invalid Business rep score, must be from 0.0 to 5.0')

        if cleaned_data['engineering_rep_score'] > 2400 or cleaned_data['engineering_rep_score'] < 0:
            raise ValidationError('Invalid Engineering rep score, must be from 0.0 to 5.0')

        return cleaned_data


