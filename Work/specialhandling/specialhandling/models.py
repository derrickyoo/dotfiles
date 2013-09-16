import django.db import models

from django.contrib.auth.models import User
from django.core import validators
from django.core.validators import RegexValidator
from django.core.exceptions import ValidationError


class CheckInfo(models.Model):
    # Regex
    alpha = RegexValidator(r'^[a-zA-Z]*$', 'Only characters from the alphabet are allowed')
    alphanumeric = RegexValidator(r'^[0-9a-zA-Z]*$', 'Only alphanuermic characters are allowed')

    # Required fields
    net_id = models.ForeignKey(User, blank=False)
    check_number = models.IntegerField(blank=False)
    payee_number = models.IntegerField(max_length=10, blank=False)
    payee_name = models.CharField(max_length=40, blank=False, validators=[alpha])
    edocs_number = models.IntegerField(max_length=9, blank=False)
    org_code = models.CharField(max_length=4, blank=False, validators=[alphanumeric])
    instructions = models.TextField(max_length=90, blank=False)

    # Fields that are not required
    contact_name = models.CharField(max_length=40, blank=True, default='')
    contact_number = models.IntegerField(max_length=10, blank=True, default='')
    contact_email = models.EmailField(blank=True, default='', validators=[validate_email])
    created_at = models.DateTimeField(auto_now_add=True, editable=False)
    updated_at = models.DateTimeField(auto_now=True, editable=False)

    class Meta:
        ordering = ['-created_at', 'check_number', 'org_code']

    def __unicode__(self):
        return self.title
        

'''
class EditLog(models.Model):
    check_info = models.ForeignKey(CheckInfo)
    net_id = models.ForeignKey(User, blank=False)
    check_number = models.IntegerField(blank=False)
    created_at = models.DateTimeField(auto_now_add=True, editable=False)
    updated_at = models.DateTimeField(auto_now=True, editable=False)

    class Meta:
        ordering = ['-created_at', 'check_number']

    def __unicode__(self):
        return self.title
'''