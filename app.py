from fastapi import FastAPI, File, UploadFile
from PIL import Image
import io

app = FastAPI()

@app.post("/analyze-image")
async def analyze_image(file: UploadFile = File(...)):
    contents = await file.read()
    image = Image.open(io.BytesIO(contents))
    return {
        "의심 질환": "외이염",
        "신뢰도": "92.5%",
        "조치": "병원 내원 필요. 귀 청소는 자제하세요."
    }
