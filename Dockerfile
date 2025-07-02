FROM python:3.10-slim

RUN apt-get update && \
    apt-get install -y git gcc ffmpeg libgl1 && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
RUN pip install --no-cache-dir torch torchvision \
    && pip install --no-cache-dir ComfyUI[dev] \
    && pip install --no-cache-dir diffusers transformers

EXPOSE 8188
CMD ["python", "-u", "ComfyUI/main.py", "--data-dir", "/data"]
