from django.shortcuts import render_to_response
from models import Divan


def index(request):
    return render_to_response('ks/index.html',{})

def soft_mebli(request):
    divans_list = Divan.objects.all();
    return render_to_response('ks/soft_mebli.html', {'divans' : divans_list})

def vorota(request):
    return render_to_response('ks/vorota.html', {})

def kyhni(request):
    return render_to_response('ks/kyhni.html', {})

def shafy_kupe(request):
    return render_to_response('ks/shafy-kupe.html', {})

def stoly_krisla(request):
    return render_to_response('ks/stoly-krisla.html', {})

def spalni(request):
    return render_to_response('ks/spalni.html', {})

def shaluzi(request):
    return render_to_response('ks/shaluzi.html', {})

def kartyny(request):
    return render_to_response('ks/kartyny.html', {})

