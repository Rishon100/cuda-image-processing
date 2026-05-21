#include <stdio.h>
#include <cuda_runtime.h>

__global__ void brightenImage(int *pixels)
{
    int idx = threadIdx.x;

    pixels[idx] += 50;

    printf("Pixel %d brightness increased to %d\n", idx, pixels[idx]);
}

int main()
{
    int pixels[5] = {10, 20, 30, 40, 50};

    int *d_pixels;

    cudaMalloc((void**)&d_pixels, 5 * sizeof(int));

    cudaMemcpy(d_pixels, pixels, 5 * sizeof(int), cudaMemcpyHostToDevice);

    brightenImage<<<1,5>>>(d_pixels);

    cudaMemcpy(pixels, d_pixels, 5 * sizeof(int), cudaMemcpyDeviceToHost);

    cudaDeviceSynchronize();

    printf("\nProcessed Pixel Values:\n");

    for(int i = 0; i < 5; i++)
    {
        printf("%d\n", pixels[i]);
    }

    cudaFree(d_pixels);

    return 0;
}