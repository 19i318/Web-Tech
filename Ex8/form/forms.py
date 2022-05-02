from ast import Pass
from datetime import date

from django import forms
from django.core.validators import EmailValidator, MinValueValidator
from django.core.exceptions import ValidationError
from django.forms.widgets import PasswordInput

class RegistrationForm(forms.Form):
    
    name = forms.CharField(label='Name', max_length=50)
    email = forms.EmailField(label='Email', validators=[EmailValidator])
    age = forms.IntegerField(label='Age', validators=[MinValueValidator(18, message='Users below 18 are not allowed to register')])
    password = forms.CharField(label='Password', widget=PasswordInput)