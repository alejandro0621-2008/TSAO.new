import httpx

API_URL = "http://localhost:8000"

def obtener_estudiantes():
    try:
        response = httpx.get(f"{API_URL}/students")
        response.raise_for_status()  # Lanza error si la respuesta no es 200
        return response.json()
    except httpx.HTTPError as e:
        print(f"Error al obtener estudiantes: {e}")
        return []
