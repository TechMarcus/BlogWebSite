from fastapi import APIRouter, Depends, HTTPException

router = APIRouter(
    prefix="/users",
)

@router.get("/")
async def read_users():
    return [{"username": "Rick"}, {"username": "Morty"}]
