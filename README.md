# CUDA Image Brightness Processing

## Project Overview

This project demonstrates a simple GPU-based image brightness processing simulation using CUDA. The goal of the project is to show how GPU computation can be used for image processing workloads by applying parallel operations to pixel values.

The CUDA kernel increases the brightness of pixel values in parallel. Each GPU thread is responsible for processing one pixel value. This demonstrates the concept of parallel image processing using CUDA kernels and GPU computation.

The project was developed as part of the Coursera course:

CUDA at Scale for the Enterprise

---

# Objectives

The objectives of this project are:

- Demonstrate basic CUDA programming concepts
- Use GPU computation through CUDA kernels
- Simulate image brightness processing
- Show parallel execution of image operations
- Provide proof of CUDA-based execution

---

# Technologies Used

- CUDA C++
- NVIDIA CUDA Runtime API
- GPU Parallel Computing
- C/C++

---

# Project Structure

```text
cuda-image-processing/
│
├── main.cu
├── README.md
├── output.txt