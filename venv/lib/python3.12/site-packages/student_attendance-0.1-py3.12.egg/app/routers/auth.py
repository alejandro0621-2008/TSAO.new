from fastapi import APIRouter, HTTPException
from app.schemas import UserLogin
# Corrección
from app.schemas import UserCreate, UserLogin
from student_attendance.app.crud import login_user   
import sys
import os

sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '../../')))

from student_attendance.app.crud import login_user



router = APIRouter()

'''@router.post("/register")
def register(user: UserCreate):
    result = register_user(user.username, user.password)
    if "error" in result:
        raise HTTPException(status_code=400, detail=result["error"])
    return result
'''
@router.post("/login")
def login(user: UserLogin):
    result = login_user(user.Correo, user.password)
    if "error" in result:
        raise HTTPException(status_code=400, detail=result["error"])
    return result
