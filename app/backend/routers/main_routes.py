from fastapi import APIRouter, Depends, HTTPException
from fastapi.responses import FileResponse


router = APIRouter()

@router.get("/")
async def show_main():
    page_file = "../frontend/static/index.html"
    return FileResponse(page_file)