Table of Contents
=================
* [System](#system)
* [uv python](#uv-python)
* [LLama-cpp](#llama-cpp)
* [MLX](#mlx)
* [Docker](#docker)

# System
```bash
free -h # check memory
df -h # check disk
du -sh * # check disk usage
top # check CPU usage
htop # check CPU usage
sudo apt install nmon # install nmon
sudo apt install fd-find # install fd-find
alias fd='fdfind' # alias fd to fdfind
nmon # check CPU usage
nmon -f # check CPU usage
cd - # go back to the previous directory
sudo bash -c "echo on > /sys/devices/system/cpu/smt/control" # enable SMT
sudo bash -c "echo off > /sys/devices/system/cpu/smt/control" # disable SMT
cat /sys/kernel/mm/transparent_hugepage/enabled # check transparent hugepage status
echo always | sudo tee /sys/kernel/mm/transparent_hugepage/enabled # enable transparent hugepage
echo madvise | sudo tee /sys/kernel/mm/transparent_hugepage/enabled # enable transparent hugepage
echo never | sudo tee /sys/kernel/mm/transparent_hugepage/enabled # disable transparent hugepage
```

# uv python

#### Install uv python:
```bash
curl -LsSf https://astral.sh/uv/install.sh | less
```

#### Create a new virtual environment:
```bash
uv venv
```

#### Install dependencies:
```bash
uv pip install -r requirements.txt
```

#### Run the script:
```bash
uv run python script.py
```

#### Activate the virtual environment:
```bash
source .venv/bin/activate
```



# LLama-cpp

#### Install LLama.cpp

```bash
brew install llama.cpp
```

#### How to Use LLama.cpp
```bash
# Use a local model file
llama-cli -m my_model.gguf

# Or download and run a model directly from Hugging Face
llama-cli -hf ggml-org/gemma-3-1b-it-GGUF

# Launch OpenAI-compatible API server
llama-server -hf ggml-org/gemma-3-1b-it-GGUF
```

# MLX
#### What is MLX?

[MLX](https://github.com/ml-explore/mlx) is an open-source machine learning framework developed by Apple, designed to provide efficient and flexible tools for training and running machine learning models, especially on Apple Silicon (M1/M2/M3) hardware. MLX is optimized for performance and ease of use, making it a great choice for both research and production environments.

#### How to Install MLX

MLX requires macOS and Apple Silicon (M1/M2/M3). To install MLX, you need Python 3.8 or newer and a recent version of pip.

1. **Install MLX via pip:**

   ```bash
   pip install mlx
   ```

2. **(Optional) Install MLX command-line tools:**

   If you want to use the MLX CLI tools, you can install them as follows:

   ```bash
   pip install mlx[cli]
   ```

3. **Verify the installation:**

   You can check if MLX is installed correctly by running:

   ```bash
   python -c "import mlx; print(mlx.__version__)"
   ```

To download a pre-trained MLX model, you can use the `mlx` command-line tool. For example, to download a model from the Hugging Face Hub, run:

#### How to Use MLX

MLX provides a simple API for running and training machine learning models. Here’s a basic example of how to use MLX to perform a simple tensor operation:

```bash
mlx_lm.chat --model <model_path>
```

# Docker

#### How to Install Docker

```bash
brew install docker
```

#### How to Use Docker

```bash
docker run -it ubuntu:latest
```

#### Run a container

```bash
docker run -it --privileged -v /home:/home ubuntu:latest
```

#### Exec into a container

```bash
docker exec -it <container_id> /bin/bash
```

#### Stop a container

```bash
docker stop <container_id>
```

#### Remove a container

```bash
docker rm <container_id>
```

#### Start a container

```bash
docker start <container_id>
```

#### Restart a container

```bash
docker restart <container_id>
```

#### List all containers

```bash
docker ps -a
```

#### Prune all containers, images and volumes

```bash
sudo docker system prune -a --volumes --force && sudo docker container ls -aq | xargs -r sudo docker container rm -f && sudo docker image ls -aq | xargs -r sudo docker image rm -f
```
