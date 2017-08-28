//
//  Sort.c
//  Sort
//
//  Created by keso on 2017/8/27.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

#include "Sort.h"

void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

void display(int a[], int n) {
    for(int i = 0;i < n; i++){
        printf("%d ", a[i]);
    }
    printf("\n");
}

////交换类排序====

// 冒泡排序

void bubbleSort(int a[], int n) {
    for (int i = 0; i < n - 1; i++) {
        for (int j = 0; j < n - i - 1; j++) {
            if (a[j] > a[j+1]) {
                swap(&a[j], &a[j+1]);
            }
        }
    }
}

void bubbleSort2(int a[], int n) {
    for (int i = n - 1; i > 0 ; i--) {
        for (int j = 0; j < i; j++) {
            if (a[j] > a[j+1]) {
                swap(&a[j], &a[j+1]);
            }
        }
    }
}

////选择类排序====

// 选择排序

void selectSort(int a[], int n) {
    for (int i = 0; i < n - 1; i++) {
        int min = i;
        for (int j = i + 1; j < n; j++) {
            if (a[j] < a[min]) {
                min = j;
            }
        }
        swap(&a[i], &a[min]);
    }
}

////插入类排序====

// 插入排序

void insertSort(int a[], int n) {
    for (int i = 1; i < 10; i++) {
        for (int j = i; j > 0 && a[j] < a[j-1]; j--) {
            swap(&a[j], &a[j-1]);
        }
        printf("第%d趟排序\n",i);
        printData(a, n);
    }
}

// 希尔排序

void shellSort(int a[], int n) {
    
    int gap = n / 3;
    while (gap > 0) {
        for (int i = gap; i < n; i++) {
            for (int j = i; j >= gap && a[j] < a[j-gap]; j -= gap) {
                swap(&a[j], &a[j-gap]);
            }
        }
        gap = gap / 3;
    }
}

void partition(int a[], int low, int high) {
    int j = low;
    int pivot = a[high];
    for (int i = low; i <= high ; i++) {
        if (a[i] < pivot) {
            swap(&a[++j], &a[i]);
        }
    }
    swap(&a[j], &a[high]);
    display(a, high + 1);
}


