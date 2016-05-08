//
//  Sort.h
//  AlogrithmAll
//
//  Created by keso on 15/6/15.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MySort : NSObject

@property (strong,nonatomic) NSMutableArray  *tempArr;

//选择排序
-(NSMutableArray *)selectorSort:(NSMutableArray *)arr;


-(NSMutableArray *)insertSort:(NSMutableArray *)arr;



//希尔排序
-(NSMutableArray *)shellSort:(NSMutableArray *)arr;

//希尔排序
-(NSMutableArray *)shellSort1:(NSMutableArray *)arr;


//归并排序自顶向下
-(void)mergeSort:(NSMutableArray *)arr   lowIndex:(NSInteger)low highIndex:(NSInteger)high;

//归并排序自底向上
-(void)mergeSortBottom:(NSMutableArray *)arr;

//快速排序
-(void)quickSort:(NSMutableArray *)arr   lowIndex:(NSInteger)low highIndex:(NSInteger)high;




@end
