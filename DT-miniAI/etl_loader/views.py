from django.http import HttpResponse
from django.shortcuts import render
from .models import Customer


def index(request):
   # return HttpResponse("Hello World")
    customers = Customer.objects.all()
    return render(request, "index.html", {"customers": customers})


def dashboard(request):
    return HttpResponse("AI Dashboard")
