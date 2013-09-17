from django.shortcuts import render
from django.http import HttpResponseRedirect

from specialhandling.models import CheckInfo
from specialhandling.forms import SpecialHandlingForm

def index(request, *args, **kwargs):
    template_name = 'index.html'


    if request.method == 'POST':
        form = SpecialHandlingForm(request.POST)

        if form.is_valid():
            payee_number = form.cleaned_data['payee_number']
            payee_name = form.cleaned_data['payee_name']
            edocs_number = form.cleaned_data['edocs_number']
            org_code = form.cleaned_data['org_code']
            check_number = form.cleaned_data['check_number']
            instructions = form.cleaned_data['instructions']

            # Fields that are not required
            contact_name = form.cleaned_data['contact_name']
            contact_number = form.cleaned_data['contact_number']
            contact_email = form.cleaned_data['contact_email']

            form.save()
            return HttpResponseRedirect()
    else:
        form = SpecialHandlingForm()

        context = {
            'form': form,
        }

    return render(request, template_name, context)



