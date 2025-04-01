# ComfyUI Docker Setup for macOS (Intel CPU)
This guide explains how to run ComfyUI in a Docker container on macOS (Intel) using CPU-only mode.


## Quick Start

### 1. Clone the Repository (Optional)
If you want to customize the `Dockerfile`, clone this repo:
```aiignore
git clone https://github.com/shc0der/comfyui_docker.git
cd ComfyUI
```

### 2. Build the Docker Image
Run this command in the directory containing the Dockerfile:
```aiignore
docker build -t comfyui-cpu .
```

### 3. Run the Container
Start ComfyUI with:
```aiignore
docker run -it --rm -p 8188:8188 --name comfyui \
  -v /path/to/your/models:/home/ComfyUI/models \
  -v /path/to/your/custom_nodes:/home/ComfyUI/custom_nodes \
  comfyui-cpu
```

### 4. Access ComfyUI
Open your browser and go to `http://localhost:8188`
