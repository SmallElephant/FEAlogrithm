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
    int bubble[] = {1, 4, 7, 4, 3, 10, 5, 2, 4};
    display(bubble, 9);
    bubbleSort(bubble, 9);
    printf("冒泡排序的结果:\n");
    display(bubble, 9);
    
    int quick[] = {1, 4, 7, 4, 3, 10, 5, 2, 4};
    quickSort(quick, 0, 8);
    printf("快排序的结果:\n");
    display(quick, 9);
    
    int quick1[] = {1, 4, 7, 4, 3, 10, 5, 2, 4};
    quickSort1(quick1, 0, 8);
    printf("快排序的结果1:\n");
    display(quick1, 9);
    
    int quick2[] = {1, 4, 7, 4, 3, 10, 5, 2, 4};
    quickSort2(quick2, 0, 8);
    printf("快排序的结果2:\n");
    display(quick2, 9);
    
    int select[] = {1, 4, 7, 4, 3, 10, 5, 2, 4};
    selectSort(select, 9);
    printf("选择排序的结果:\n");
    display(select, 9);
    
    int insert[] = {1, 4, 7, 4, 3, 10, 5, 2, 4};
    insertSort(insert, 9);
    printf("插入排序的结果:\n");
    display(insert, 9);
    
    int shell[] = {1, 4, 7, 4, 3, 10, 5, 2, 4};
    shellSort(shell, 9);
    printf("希尔排序的结果:\n");
    display(shell, 9);
    
    int merge[] = {1, 4, 7, 4, 3, 10, 5, 2, 4};
    printf("希尔排序的结果:\n");
    mergeSort(merge, 0, 8);
    display(merge, 9);
    
    int heap[] = {1, 4, 7, 4, 3, 10, 5, 2, 4};
    printf("堆排序的结果:\n");
    heapSort(heap, 8);
    display(heap, 9);
    
    return 0;
}
