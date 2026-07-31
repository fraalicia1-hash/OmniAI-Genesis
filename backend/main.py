from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
from ai_core import process_message

app = FastAPI(title="OmniAI Genesis API")

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_methods=["*"],
    allow_headers=["*"],
)

class ChatRequest(BaseModel):
    message: str

@app.get("/")
def home():
    return {"name": "OmniAI Genesis", "status": "online"}

@app.post("/chat")
def chat(req: ChatRequest):
    response = process_message(req.message)
    return {"user": req.message, "assistant": response}
