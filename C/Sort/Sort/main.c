//
//  main.c
//  Sort
//
//  Created by keso on 2017/8/27.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

#include <stdio.h>
#include "Sort.h"

int main(int argc, const char * argv[]) {
    // insert code here...

    int a[10] = {1, 20, 30, 8, 7, 9, 6, 50, 12, 18};
//    printf("冒泡排序的结果:\n");
//    bubbleSort(a, 10);
//    printData(a, 10);
    
//    printf("选择排序的结果:\n");
//    selectSort(a, 10);
//    printData(a, 10);
    
//    printf("插入排序的结果:\n");
//    insertSort(a, 10);
//    printData(a, 10);
    
//    printf("希尔排序的结果:\n");
//    shellSort(a, 10);
//    printData(a, 10);
    
    int quick[10] = {1, 4, 4, 3, 2, 10, 20, 8, 9, 4};
    quickSort(quick, 0, 9);
    printf("快速排序之后的结果:\n");
    display(quick, 10);
    
    int quick1[10] = {1, 4, 4, 3, 2, 10, 20, 8, 9, 4};
    quickSort(quick1, 0, 9);
    printf("快速排序1之后的结果:\n");
    display(quick1, 10);
    
    int quick2[10] = {1, 4, 4, 3, 2, 10, 20, 8, 9, 4};
    quickSort2(quick2, 0, 9);
    printf("快速排序2之后的结果:\n");
    display(quick2, 10);
    
    int merge[10] = {1, 4, 4, 3, 2, 10, 20, 8, 9, 4};
    mergeSort(merge, 0, 9);
    printf("归并排序自顶向下的结果:\n");
    display(merge, 10);
    
    int merge2[10] = {1, 4, 4, 3, 2, 10, 20, 8, 9, 4};
    mergeSort2(merge2, 10);
    printf("归并排序自顶向下的结果:\n");
    display(merge2, 10);
    return 0;
}
