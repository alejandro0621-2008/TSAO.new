from fastapi import FastAPI
from student_attendance.app.routers import auth
# Corrección
from app.routers import auth   
app = FastAPI()

# Incluir las rutas de autenticación
app.include_router(auth.router, prefix="/auth")

@app.get("/")
def home():
    return {"message": "API en funcionamiento"}
