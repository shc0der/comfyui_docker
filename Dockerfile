FROM python:3.12-slim

RUN apt-get update && apt-get install -y \
    git \
    libgl1 \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir --upgrade pip

RUN git clone https://github.com/comfyanonymous/ComfyUI /home/ComfyUI

RUN git clone https://github.com/ltdrdata/ComfyUI-Manager /home/ComfyUI/custom_nodes/comfyui-manager

WORKDIR /home/ComfyUI

RUN pip install --no-cache-dir torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8188

CMD ["python", "main.py", "--cpu", "--listen"]