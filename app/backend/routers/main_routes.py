from fastapi import APIRouter
from fastapi.responses import FileResponse


router = APIRouter()

@router.get("/")
async def show_main():
    page_file = "./static/index.html"
    return FileResponse(page_file)

@router.get("/health")
async def health_check():
    return {"status": "healthy"}    