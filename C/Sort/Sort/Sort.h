//
//  Sort.h
//  Sort
//
//  Created by FlyElephant on 2017/8/31.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

#ifndef Sort_h
#define Sort_h

#include <stdio.h>

// util
void swap(int *a, int *b);
void display(int a[], int n);

// 冒泡排序
void bubbleSort(int a[], int n);

// 快速排序
void quickSort(int a[], int low, int high);
int partition(int a[], int low, int high);

void quickSort1(int a[], int low, int high);
int partition1(int a[], int low, int high);

void quickSort2(int a[], int low, int high);
int partition2(int a[], int low, int high);

// 选择排序
void selectSort(int a[], int n);

// 插入排序
void insertSort(int a[], int n);

// 希尔排序
void shellSort(int a[], int n);

// 归并排序
void mergeSort(int a[], int low, int high);
void merge(int a[], int low, int mid, int high);

// 堆排序
void heapSort(int a[], int n);
void sink(int a[], int k, int n);

#endif /* Sort_h */
