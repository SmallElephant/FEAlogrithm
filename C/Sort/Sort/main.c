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
    
    printf("希尔排序的结果:\n");
    shellSort(a, 10);
    printData(a, 10);
    return 0;
}
