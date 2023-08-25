from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.

def mostrar_mensaje(request):
    mensaje = "Este es un mensaje de ejemplo para la administración."
    return HttpResponse(mensaje)
