//
//  Sort.c
//  Sort
//
//  Created by FlyElephant on 2017/8/31.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

#include "Sort.h"
#include <stdbool.h>

void swap(int *a, int *b) {
    int tmp = *a;
    *a = *b;
    *b = tmp;
}

void display(int a[], int n) {
    for (int i = 0; i < n; i++) {
        printf("%d ",a[i]);
    }
    printf("\n");
}

// 冒泡排序

void bubbleSort(int a[], int n) {
    for (int i = 0; i < n - 1; i++) {
        for (int j = 0; j < n - 1 - i; j++) {
            if (a[j] > a[j+1]) {
                swap(&a[j], &a[j+1]);
            }
        }
    }
}

// 快速排序

void quickSort(int a[], int low, int high) {
    if (low >= high) {
        return;
    }
    int mid = partition(a, low, high);
    quickSort(a, low, mid - 1);
    quickSort(a, mid + 1, high);
}

int partition(int a[], int low, int high) {
    int i = low;
    int pivot = a[high];
    for (int j = low; j <= high; j++) {
        if (a[j] < pivot) {
            swap(&a[i++], &a[j]);
        }
    }
    swap(&a[high], &a[i]);
    return i;
}


void quickSort1(int a[], int low, int high) {
    if (low >= high) {
        return;
    }
    int mid = partition1(a, low, high);
    quickSort1(a, low, mid - 1);
    quickSort1(a, mid + 1, high);
}

int partition1(int a[], int low, int high) {
    int i = low - 1;
    int j = high;
    int pivot = a[high];
    while (true) {
        while (a[++i] < pivot) {
            if (i == high) {
                break;
            }
        }
        while (a[--j] > pivot) {
            if (j == low) {
                break;
            }
        }
        if (i >= j) {
            break;
        }
        swap(&a[i], &a[j]);
    }
    swap(&a[i], &a[high]);
    return i;
}

void quickSort2(int a[], int low, int high) {
    if (low >= high) {
        return;
    }
    int mid = partition2(a, low, high);
    quickSort2(a, low, mid - 1);
    quickSort2(a, mid + 1, high);
}

int partition2(int a[], int low, int high) {
    int i = low;
    int j = high - 1;
    int pivot = a[high];
    while (true) {
        while (a[i] <= pivot) {
            if (i < high) {
                 i++;
            } else {
                break;
            }
        }
        while (a[j] > pivot) {
            if (j > low) {
                j--;
            } else {
                break;
            }
        }
        if (i >= j) {
            break;
        }
        swap(&a[i], &a[j]);
    }
    swap(&a[high], &a[i]);
    return i;
}

// 选择排序

void selectSort(int a[], int n) {
    for (int i = 0; i < n - 1; i++) {
        int min = i;
        for (int j = i; j < n; j++) {
            if (a[j] < a[min]) {
                min = j;
            }
        }
        swap(&a[i], &a[min]);
    }
}

// 插入排序

void insertSort(int a[], int n) {
    for (int i = 0; i < n; i++) {
        for (int j = i; j > 0 && a[j] < a[j-1]; j--) {
            swap(&a[j], &a[j-1]);
        }
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


// 归并排序
void mergeSort(int a[], int low, int high) {
    if (low >= high) {
        return;
    }
    int mid = low + (high - low) / 2;
    mergeSort(a, low, mid);
    mergeSort(a, mid + 1, high);
    merge(a, low, mid, high);
}

void merge(int a[], int low, int mid, int high) {
    int au[high-low+1];
    int i = low;
    int j = mid + 1;
    int m = 0;
    for (int k = low; k <= high; k++) {
        if (i > mid) {
            au[m++] = a[j++];
        } else if (j > high) {
            au[m++] = a[i++];
        } else if (a[i] < a[j]) {
            au[m++] = a[i++];
        } else {
            au[m++] = a[j++];
        }
    }
    for (int k = low; k <= high; k++) {
        a[k] = au[k-low];
    }
}

// 堆排序
void heapSort(int a[], int n) {
    // 构造堆
    for (int i = n / 2; i >=0; i--) {
        sink(a, i, n);
    }
    
    while (n > 0) {
        swap(&a[0], &a[n--]);
        sink(a, 0, n);
    }
}

void sink(int a[], int k, int n) {
    while ((2*k+1) <= n) {
        int j = 2 * k + 1;
        if (j < n && a[j] < a[j+1]) {
            j++;
        }
        if (a[k] > a[j]) {
            break;
        }
        swap(&a[k], &a[j]);
        k = j;
    }
}

