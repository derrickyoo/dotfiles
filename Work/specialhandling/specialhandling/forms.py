from django.forms import ModelForm
from specialhandling.models import CheckInfo

class SpecialHandlingForm(ModelForm):
    class Meta:
        model = CheckInfo
        exclude = ('net_id', 'created_at', 'updated_at', 'picked_up')
