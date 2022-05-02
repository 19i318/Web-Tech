from django.shortcuts import render
from django.http import HttpResponse
from .forms import RegistrationForm

# Create your views here.
def index(request):

    if request.method == 'POST':
        
        form = RegistrationForm(request.POST)

        if form.is_valid():
            return HttpResponse('Form submitted!')

    else:
        form = RegistrationForm()

    return render(request, 'form/form.html', {'form':form})