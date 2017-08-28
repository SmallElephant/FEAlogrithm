//
//  Sort.h
//  Sort
//
//  Created by keso on 2017/8/27.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

#ifndef Sort_h
#define Sort_h

#include <stdio.h>

void printData(int a[], int n);

// 冒泡排序
void bubbleSort(int a[], int n);
void bubbleSort2(int a[], int n);

// 选择排序
void selectSort(int a[], int n);

// 插入排序
void insertSort(int a[], int n);

// 希尔排序
void shellSort(int a[], int n);

void partition(int a[], int low, int high);

#endif /* Sort_h */
