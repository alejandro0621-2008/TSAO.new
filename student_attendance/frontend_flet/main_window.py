import flet as ft
from api_client import obtener_estudiantes  # Importar función

def main(page: ft.Page):
    page.title = "Lista de Estudiantes"
    
    estudiantes = obtener_estudiantes()
    lista = ft.ListView(expand=True)

    for estudiante in estudiantes:
        lista.controls.append(ft.Text(estudiante["nombre"]))

    page.add(lista)

ft.app(target=main)
