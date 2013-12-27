from django.shortcuts import render_to_response
from models import Divan


def index(request):
    return render_to_response('ks/index.html',{})

def soft_mebli(request):
    divans_list = Divan.objects.all();
    return render_to_response('ks/soft_mebli.html', {'divans' : divans_list})