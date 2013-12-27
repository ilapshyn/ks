from django.shortcuts import render_to_response


def index(request):
    return render_to_response('ks/index.html',{})

def soft_mebli(request):
    return render_to_response('ks/soft_mebli.html',{})