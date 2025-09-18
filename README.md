# What is MLX?

[MLX](https://github.com/ml-explore/mlx) is an open-source machine learning framework developed by Apple, designed to provide efficient and flexible tools for training and running machine learning models, especially on Apple Silicon (M1/M2/M3) hardware. MLX is optimized for performance and ease of use, making it a great choice for both research and production environments.

# How to Install MLX

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

# How to Use MLX

MLX provides a simple API for running and training machine learning models. Here’s a basic example of how to use MLX to perform a simple tensor operation:

```bash
mlx_lm.chat --model <model_path>
```