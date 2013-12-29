from django.shortcuts import render_to_response
from models import SoftMebel, Citchen, Stolu, ShafyKupe, Vorota, Kartyny,\
    Shaluzi

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
    option_number = request.GET.get('option')
    divans_list = SoftMebel.objects.filter(type=option_number)
    return render_to_response('ks/soft_mebli.html', {'items' : divans_list,
                                                     'option' : option_number,
                                                     'options': ['1','2','3','4','5','6'],
                                                     'menu' : MENU,
                                                     'selected' : 'soft-mebel'})

def vorota(request):
    vorotas_list = Vorota.objects.all();
    return render_to_response('ks/vorota.html',     {'items' : vorotas_list,
                                                     'menu' : MENU,
                                                     'selected' : 'vorota'})

def kyhni(request):
    option_number = request.GET.get('option')
    citchens_list = Citchen.objects.filter(type=option_number)
    return render_to_response('ks/kyhni.html',      {'items' : citchens_list,
                                                     'option' : option_number,
                                                     'options': ['1','2','3'],
                                                     'menu' : MENU,
                                                     'selected' : 'kyhni'})

def shafy_kupe(request):
    option_number = request.GET.get('option')
    shafy = ShafyKupe.objects.filter(type=option_number)
    return render_to_response('ks/shafy-kupe.html',   {'items' : shafy,
                                                       'option' : option_number,
                                                       'options': ['1','2','3'],
                                                       'menu' : MENU,
                                                       'selected' : 'shafy-kupe'})

def stoly_krisla(request):
    option_number = request.GET.get('option')
    stolu = Stolu.objects.filter(type=option_number)
    return render_to_response('ks/stoly-krisla.html', {'items' : stolu,
                                                       'option' : option_number,
                                                       'options': ['1','2','3','4','5'],
                                                       'menu' : MENU,
                                                       'selected' : 'stoly-krisla'})

def spalni(request):
    option_number = request.GET.get('option')
    spalni = Stolu.objects.filter(type=option_number)
    return render_to_response('ks/spalni.html',       {'items' : spalni,
                                                       'option' : option_number,
                                                       'options': ['1','2','3'],
                                                       'menu' : MENU,
                                                       'selected' : 'spalni'})

def shaluzi(request):
    shaluzis = Shaluzi.objects.all();
    return render_to_response('ks/shaluzi.html',    {'items' : shaluzis,
                                                     'menu' : MENU,
                                                     'selected' : 'shaluzi'})

def kartyny(request):
    kartynas = Kartyny.objects.all();
    return render_to_response('ks/kartyny.html',    {'items' : kartynas,
                                                     'menu' : MENU,
                                                     'selected' : 'kartyny'})
def oplata(request):
    return render_to_response('ks/404.html',        {'menu' : MENU,
                                                     'selected' : 'oplata'})

