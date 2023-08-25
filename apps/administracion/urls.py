from django.urls import path
from . import views

urlpatterns = [
    path('mensaje/', views.mostrar_mensaje, name='mensaje'),  # Reemplaza 'mensaje_view' con tu vista real
]
