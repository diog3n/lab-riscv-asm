#include "stdio.h"

enum matrix_params
{
    N = 4,
    M = 4,
};

int matrix[M][N];

void process(int n, int m, int matrix[M][N], int *result)
{
    *result = 0;
    for (int i = 0; i < M; i++)
    {
        for (int j = 0; j < N; j++)
        {
            *result += matrix[i][j];
        }
    }
}

int main(int argc, char **argv)
{
    int result = 0;
    for (int m = 0; m < M; m++)
    {
        for (int n = 0; n < N; n++)
        {
            fscanf(stdin, "%d", &matrix[m][n]);
        }
    }

    process(N, M, matrix, &result);

    fprintf(stdout, "%d\n", result);

    return 0;
}