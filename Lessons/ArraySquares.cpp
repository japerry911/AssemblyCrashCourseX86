//
//  main.cpp
//  CalcArraySqaures
//
//  Created by John Perry on 7/22/20.
//  Copyright © 2020 John Perry. All rights reserved.
//

#include <iostream>
#include <stdio.h>

extern "C" int CalcArraySquares(int *y, const int *x, int n);
int CalcArraySquaresCPP(int *y, const int *x, int n);

int main(int argc, const char * argv[]) {
    int x[] = {2, 3, 4, 5, 6, 7, 8, 9, 10};
    const int n = sizeof(x) / sizeof(int);
    
    int y1[n];
    int y2[n];
    
    int sum_y1 = CalcArraySquaresCPP(y1, x, n);
    int sum_y2 = CalcArraySquares(y2, x, n);
    
    for (int i = 0; i < n; ++i) {
        printf("i: %2d  x: %4d  y1: %4d  y2: %4d\n", i, x[i], y1[i], y2[i]);
    }
    
    printf("Sum_y1: %d\n", sum_y1);
    printf("Sum_y2: %d\n", sum_y2);
        
    return 0;
}

int CalcArraySquaresCPP(int *y, const int *x, int n) {
    int sum = 0;
    
    for (int i = 0; i < n; ++i) {
        y[i] = x[i] * x[i];
        sum += y[i];
    }
    
    return sum;
}
