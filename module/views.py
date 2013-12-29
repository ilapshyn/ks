from django.shortcuts import render_to_response
from models import SoftMebel

MENU =           ['soft-mebel', 
                  'kyhni', 
                  'shafy-kupe', 
                  'stoly-krisla', 
                  'spalni', 
                  'shaluzi', 
                  'kartyny', 
                  'vorota']

def index(request):
    return render_to_response('ks/index.html',{'menu' : MENU})

def soft_mebli(request):
    divans_list = SoftMebel.objects.all();
    option_number = request.GET.get('option')
    return render_to_response('ks/soft_mebli.html', {'divans' : divans_list,
                                                     'option' : option_number,
                                                     'menu' : MENU,
                                                     'selected' : 'soft-mebel'})

def vorota(request):
    return render_to_response('ks/vorota.html',     {'menu' : MENU,
                                                     'selected' : 'vorota'})

def kyhni(request):
    return render_to_response('ks/kyhni.html',      {'menu' : MENU,
                                                     'selected' : 'kyhni'})

def shafy_kupe(request):
    return render_to_response('ks/shafy-kupe.html', {'menu' : MENU,
                                                     'selected' : 'shafy-kupe'})

def stoly_krisla(request):
    return render_to_response('ks/stoly-krisla.html', {'menu' : MENU,
                                                       'selected' : 'stoly-krisla'})

def spalni(request):
    return render_to_response('ks/spalni.html',     {'menu' : MENU,
                                                     'selected' : 'spalni'})

def shaluzi(request):
    return render_to_response('ks/shaluzi.html',    {'menu' : MENU,
                                                     'selected' : 'shaluzi'})

def kartyny(request):
    return render_to_response('ks/kartyny.html',    {'menu' : MENU,
                                                     'selected' : 'kartyny'})

