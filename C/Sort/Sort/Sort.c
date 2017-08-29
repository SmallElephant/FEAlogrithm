//
//  Sort.c
//  Sort
//
//  Created by keso on 2017/8/27.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

#include "Sort.h"
#include <stdbool.h>
#include <math.h>

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
        display(a, n);
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

void quickSort(int a[], int low, int high) {
    if (low >= high) {
        return;
    }
    int mid = partition(a, low, high);
    quickSort(a, low, mid - 1);
    quickSort(a, mid + 1, high);
}

int partition(int a[], int low, int high) {
    int j = low;
    int pivot = a[high];
    for (int i = low; i < high ; i++) {
        if (a[i] < pivot) {
            swap(&a[j++], &a[i]);
        }
    }
    swap(&a[j], &a[high]);
    return j;
}

void quickSort1(int a[], int low, int high) {
    if (low >= high) {
        return;
    }
    int mid = partition(a, low, high);
    quickSort1(a, low, mid - 1);
    quickSort1(a, mid + 1, high);
}

int partition1(int a[], int low, int high) {
    int i = low;
    int j = high + 1;
    int pivot = a[low];
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
    swap(&a[low], &a[j]);
    return j;
}

void quickSort2(int a[], int low, int high) {
    if (low >= high) {
        return;
    }
    int mid = partition(a, low, high);
    quickSort2(a, low, mid - 1);
    quickSort2(a, mid + 1, high);
}

int partition2(int a[], int low, int high) {
    int i = low + 1;
    int j = high;
    int pivot = a[low];
    while (true) {
        while (a[i] < pivot && i < j) {
            i++;
        }
        while (a[j] > pivot && i < j) {
            j--;
        }
        if (i >= j) {
            break;
        }
        swap(&a[i], &a[j]);
    }
    swap(&a[low], &a[j]);
    return j;
}

void mergeSort(int a[], int low, int high) {
    if (low >= high) {
        return;
    }
    int mid = low + (high - low) / 2;
    mergeSort(a, low, mid);
    mergeSort(a, mid+1, high);
    merge(a, low, mid, high);
}

void merge(int a[], int low, int mid, int high) {
    int i = low;
    int j = mid + 1;
    int au[high - low + 1];
    int m = 0;
    for (int k = low; k <= high; k++) {
        if (i > mid) { // 右子数组有剩余
            au[m++] = a[j++];
        } else if (j > high) { // 左子数组有剩余
            au[m++] = a[i++];
        } else if (a[i] < a[j]) {
            au[m++] = a[i++];
        } else {
            au[m++] = a[j++];
        }
    }
    
    for (int k = low; k <= high; k++) {
        a[k] = au[k - low];
    }
}

void mergeSort2(int a[], int n) {
    for (int sz = 1; sz < n; sz = sz + sz) {
        for (int lo = 0; lo < n - sz; lo += sz + sz) {
            int end = lo + sz + sz - 1 > n - 1 ? n - 1 : lo + sz + sz - 1;
            merge(a, lo, lo + sz - 1, end);
        }
    }
}
