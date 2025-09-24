Table of Contents
=================
* [uv python](#uv-python)
* [LLama.cpp](#llama-cpp)
* [MLX](#mlx)
* [System](#system)

# System
```bash
free -h # check memory
df -h # check disk
du -sh * # check disk usage
top # check CPU usage
htop # check CPU usage
sudo apt install nmon # install nmon
nmon # check CPU usage
nmon -f # check CPU usage
cd - # go back to the previous directory
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
docker run -it ubuntu:latest
```

