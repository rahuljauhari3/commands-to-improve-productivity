Table of Contents
=================
* [brew](#brew)
* [System](#system)
* [Bazel](#bazel)
* [OpenMP](#openmp)
* [GCC](#gcc)
* [uv python](#uv-python)
* [LLama-cpp](#llama-cpp)
* [MLX](#mlx)
* [Docker](#docker)
* [GDB](#gdb)
* [Vim](#vim)
* [Tmux](#tmux)
* [Tools to Study](#tools-to-study)

# brew
Update brew:
```bash
brew update
```
Upgrade a package:
```bash
brew upgrade <package>
```
Upgrade all packages:
```bash
brew upgrade
```
List all installed packages:
```bash
brew list
```
List all installed packages and their versions:
```bash
brew list --versions
```
Uninstall a package:
```bash
brew uninstall <package>
```
List all available packages:
```bash
brew search <package>
```
Install a package:
```bash
brew install <package>
```

Clean up:
```bash
brew cleanup
```


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

# Create a new project:
uv new my-project

# Create a new virtual environment in the current directory:
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

# GDB
#### Install GDB

```bash
sudo apt install gdb
```

#### Use GDB to debug a program

```bash
gdb ./my_program
```

#### Set a breakpoint

```bash
(gdb) break main
```
#### Run and backtrace the program

```bash
(gdb) run
(gdb) bt
```

# Vim

#### Basic Commands
* `i` : Enter insert mode (to start typing)
* `Esc` : Exit insert mode and return to normal mode
* `:w` : Save the file
* `:q` : Quit Vim
* `:wq` : Save and quit
* `:q!` : Quit without saving

#### Navigation
* `h`, `j`, `k`, `l` : Left, Down, Up, Right
* `gg` : Go to the top of the file
* `G` : Go to the bottom of the file
* `0` : Move to the beginning of the line
* `$` : Move to the end of the line

#### Mouse Support
To enable mouse support (allows clicking to move cursor and scrolling):
```bash
:set mouse=a
```
To disable it:
```bash
:set mouse=
```

#### Copy and Paste
* `v` : Enter visual mode to select text
* `y` : Yank (copy) the selected text
* `p` : Paste after the cursor
* `P` : Paste before the cursor
* `yy` : Yank the current line
* `dd` : Delete (cut) the current line

#### Search
* `/pattern` : Search for "pattern" from the cursor forward
* `?pattern` : Search for "pattern" from the cursor backward
* `n` : Jump to the next occurrence
* `N` : Jump to the previous occurrence

#### Working with Multiple Files (Buffers)
* **Open multiple files**:
  ```bash
  vim file1.txt file2.txt file3.txt
  ```
* **List open files (buffers)**: `:ls`
* **Go to next file**: `:bn` (buffer next)
* **Go to previous file**: `:bp` (buffer previous)
* **Go to a specific file**: `:b <number>` (e.g., `:b 2`)
* **Close current buffer**: `:bd` (buffer delete)

#### Persistence (Making settings permanent)
To make your settings (like `:set mouse=a`) load every time you open Vim, add them to a file named `.vimrc` in your home directory.

1. Open (or create) the file:
   ```bash
   vim ~/.vimrc
   ```
2. Add the commands you want (without the colon):
   ```vim
   set mouse=a
   set number        " Show line numbers
   set relativenumber " Show relative line numbers
   syntax on         " Enable syntax highlighting
   set tabstop=4     " Set tab width to 4 spaces
   set shiftwidth=4  " Set indent width to 4 spaces
   set expandtab     " Use spaces instead of tabs
   ```
3. Save and exit (`:wq`).

# Tmux

#### Session Management
* **Create a named session**:
  ```bash
  tmux new -s <session_name>
  ```
* **List all sessions**:
  ```bash
  tmux ls
  ```
* **Attach to a session**:
  ```bash
  tmux attach -t <session_name>
  ```
* **Rename current session**:
  Press `Ctrl+b` then `:` and type `rename-session <new_name>` (or `Ctrl+b` then `$`)
* **Detach from session**:
  Press `Ctrl+b` then `d`

#### Window & Pane Navigation
* **New Window**: `Ctrl+b` then `c`
* **Switch Windows**: `Ctrl+b` then `0-9`
* **Split Pane (Horizontal)**: `Ctrl+b` then `"`
* **Split Pane (Vertical)**: `Ctrl+b` then `%`
* **Switch Panes**: `Ctrl+b` then `Arrow Keys`

#### Mouse Support
To enable clicking on windows, resizing panes, and scrolling with the mouse:
1. Press `Ctrl+b` then `:`
2. Type `set -g mouse on`

#### Persistence (Making Tmux settings permanent)
To keep mouse support and other settings every time you start Tmux, create a `.tmux.conf` file in your home directory:

1. Open (or create) the file:
   ```bash
   vim ~/.tmux.conf
   ```
2. Add your settings:
   ```tmux
   # Enable mouse support
   set -g mouse on

   # (Optional) Use Alt-arrow keys without prefix key to switch panes
   bind -n M-Left select-pane -L
   bind -n M-Right select-pane -R
   bind -n M-Up select-pane -U
   bind -n M-Down select-pane -D
   ```
# Reload the config (inside Tmux):
Press `Ctrl+b` then `:` and type `source-file ~/.tmux.conf`

# Tools to Study

To take your terminal productivity to the "pro" level, focus on tools that reduce cognitive load and keystrokes.

#### 1. Fuzzy Finder (`fzf`)
A general-purpose command-line fuzzy finder.
* **Why:** Integrates with Vim, Tmux, and your shell history. Map it to `Ctrl+r` to never manually search history again.

#### 2. Modern CLI Suite (Rust-based)
Faster, modern replacements for classic Unix tools:
* **`ripgrep` (`rg`)**: The fastest tool for searching text within files (respects `.gitignore`).
* **`fd`**: A faster, user-friendly alternative to `find`.
* **`zoxide` (`z`)**: A smarter `cd` command that learns your most visited directories.
* **`bat`**: A `cat` clone with syntax highlighting and Git integration.

#### 3. Git TUI (`lazygit`)
A Terminal User Interface for Git.
* **Why:** Makes complex operations like interactive rebasing and staging specific lines incredibly fast without leaving the terminal.

#### 4. Dotfile Management (`GNU Stow`)
Organize your `.vimrc`, `.tmux.conf`, and other configs in one Git-synced folder and symlink them easily.

#### 5. Environment Management (`direnv`)
Automatically load/unload environment variables and virtual environments as you enter/exit directories.

#### 6. Tiling Window Manager
Automate window placement on your OS (e.g., `yabai` or `Amethyst` for macOS).