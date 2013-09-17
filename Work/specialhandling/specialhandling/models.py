from django.db import models
from django.contrib.auth.models import User
from django.core.validators import validate_email
from django.core.validators import RegexValidator
from django.core.exceptions import ValidationError


class CheckInfo(models.Model):
    # Regex
    alpha = RegexValidator(r'^[a-zA-Z]*$', 'Only characters from the alphabet are allowed')
    alphanumeric = RegexValidator(r'^[0-9a-zA-Z]*$', 'Only alphanuermic characters are allowed')

    # Required fields
    net_id = models.ForeignKey(User, blank=False)
    payee_number = models.IntegerField(max_length=10, blank=False)
    payee_name = models.CharField(max_length=40, blank=False, validators=[alpha])
    edocs_number = models.IntegerField(max_length=9, blank=False)
    org_code = models.CharField(max_length=4, blank=False, validators=[alphanumeric])
    check_number = models.IntegerField(blank=False)
    instructions = models.TextField(max_length=90, blank=False)

    # Fields that are not required
    contact_name = models.CharField(max_length=40, blank=True, default='')
    contact_number = models.IntegerField(max_length=10, blank=True, default='')
    contact_email = models.EmailField(blank=True, default='', validators=[validate_email])
    created_at = models.DateTimeField(auto_now_add=True, editable=False)
    updated_at = models.DateTimeField(auto_now=True, editable=False)
    picked_up = models.BooleanField(default=False)

    class Meta:
        ordering = ['-created_at', 'check_number', 'org_code']

    def __unicode__(self):
        return self.title


'''
class EditLog(models.Model):
    net_id = models.ForeignKey(User, blank=False)
    check_info = models.ForeignKey(CheckInfo)
    created_at = models.DateTimeField(auto_now_add=True, editable=False)
    updated_at = models.DateTimeField(auto_now=True, editable=False)

    class Meta:
        ordering = ['-created_at', 'check_info']

    def __unicode__(self):
        return self.title

class Comments(model.Model):
    net_id = models.ForeignKey(User, blank=False)
    check_info = models.ForeignKey(CheckInfo)
    instructions = models.TextField(max_length=90, blank=True, default='')
    created_at = models.DateTimeField(auto_now_add=True, editable=False)
    updated_at = models.DateTimeField(auto_now=True, editable=False)

        class Meta:
        ordering = ['-created_at', 'check_info']

    def __unicode__(self):
        return self.title


'''
