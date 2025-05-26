from fastapi import APIRouter, FastAPI

app = FastAPI()

router = APIRouter()


@app.get("/status")
def healthcheck():
    return {"message": "hello world"}
