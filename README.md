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

# Bazel
```bash
sudo apt install apt-transport-https curl gnupg -y
curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor >bazel-archive-keyring.gpg
sudo mv bazel-archive-keyring.gpg /usr/share/keyrings
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/bazel-archive-keyring.gpg] https://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list

sudo apt update && sudo apt install bazel-6.5.0
sudo apt update && sudo apt install bazel-7.4.1
sudo apt install bazel-bootstrap

bazelisk
sudo curl -L https://github.com/bazelbuild/bazelisk/releases/latest/download/bazelisk-linux-amd64 -o /usr/local/bin/bazel
sudo chmod +x /usr/local/bin/bazel
```

# OpenMP

#### Install LLVM OpenMP:
```bash
conda activate <env name>
conda install -c conda-forge llvm-openmp=18.1.8=hf5423f3_1 -y
LD_PRELOAD=<path>/libiomp5.so:$LD_PRELOAD
```

#### IOMP OpenMP:
```bash
pip install intel-openmp
export LD_PRELOAD="$HOME/miniconda3/envs/base/lib/libiomp5.so:$LD_PRELOAD"
```

# GCC
```bash
The below steps should simply work , just one user can install it, reflects for all users (if OS is Ubuntu 22 or above). For Ubuntu 20 or below , you might have to build gcc from source
 
Keep existing GCC and install gcc13
 
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt update
sudo apt install gcc-13 g++-13
 
 
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-13 60
sudo update-alternatives --config gcc  (choose gcc 13 option)
 
 
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-13 60
sudo update-alternatives --config g++  (choose gcc 13 option)
 
 
replace existing GCC with GCC13
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt update
sudo apt install gcc-13 g++-13
sudo ln -sf /usr/bin/gcc-13 /usr/bin/gcc
```

# uv python

#### Install uv python:
```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
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
