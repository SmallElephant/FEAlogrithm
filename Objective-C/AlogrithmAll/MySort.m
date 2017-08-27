//
//  Sort.m
//  AlogrithmAll
//
//  Created by keso on 15/6/15.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "MySort.h"

@implementation MySort


-(NSMutableArray *)selectorSort:(NSMutableArray *)arr{
    for (NSInteger i=0; i<[arr count]; i++) {
       NSInteger min=i;
        for (NSInteger j=i+1; j<[arr count]; j++) {
            if ([arr[j] integerValue]<[arr[min] integerValue]) {
                min=j;
            }
        }
        
        NSInteger temp=[arr[i] integerValue];
        arr[i]=[NSNumber numberWithInteger:[arr[min] integerValue]];
        arr[min]=[NSNumber numberWithInteger:temp];

    }
    return arr;
}

-(NSMutableArray *)insertSort:(NSMutableArray *)arr{
    for (NSInteger i=1; i<[arr count]; i++) {
        for (NSInteger j=i; j>0&&[arr[j] integerValue]<[arr[j-1] integerValue]; j--) {
            
            NSInteger temp=[arr[j] integerValue];
            arr[j]=[NSNumber numberWithInteger:[arr[j-1] integerValue]];
            arr[j-1]=[NSNumber numberWithInteger:temp];
        }
    }
    return arr;
}

-(NSMutableArray *)shellSort:(NSMutableArray *)arr{
    NSInteger  group=1;
    while (group>[arr count]/3) {
        group=3*group+1;
    }
    while (group>=1) {
        //将数组变成group有序
        for (NSInteger i=group; i<[arr count]; i++) {
            //将分组后的数据与前面的数据一一比较进行交换
            for (NSInteger j=i; j>=group&&[arr[j] integerValue]<[arr[j-group] integerValue]; j-=group) {
                
                NSInteger temp=[arr[j] integerValue];
                arr[j]=[NSNumber numberWithInteger:[arr[j-group] integerValue]];
                arr[j-group]=[NSNumber numberWithInteger:temp];
            }
        }
        group=group/3;
    }
      return arr;
}

-(NSMutableArray *)shellSort1:(NSMutableArray *)arr{
    NSInteger  group=[arr count]/2;
    while (group>=1) {
        for (NSInteger i=group; i<[arr count]; i++) {
            for (NSInteger j=i; j>=group&&[arr[j] integerValue]<[arr[j-group] integerValue]; j-=group) {
                
                NSInteger temp=[arr[j] integerValue];
                arr[j]=[NSNumber numberWithInteger:[arr[j-group] integerValue]];
                arr[j-group]=[NSNumber numberWithInteger:temp];
            }
        }
        group=group/2;

    }
    return arr;
}


-(void)mergeSort:(NSMutableArray *)arr   lowIndex:(NSInteger)low highIndex:(NSInteger)high{
    if (high<=low) {
        return;
    }
    NSInteger mid=low+(high-low)/2;
    [self mergeSort:arr lowIndex:low highIndex:mid];//左半部分排序
    [self mergeSort:arr lowIndex:mid+1 highIndex:high];//右半部分排序
    [self merge:arr lowIndex:low highIndex:high midIndex:mid];

}

-(void)mergeSortBottom:(NSMutableArray *)arr{
    NSInteger count=[arr count];
    for (NSInteger increment=1; increment<count; increment=increment+increment) {//增量的数组
        for (NSInteger low=0; low<count-increment; low+=increment+increment) {//每个增量比较的次数
            NSInteger high=(low+increment+increment-1)<(count-1)?(low+increment+increment-1):(count-1);
            [self merge:arr lowIndex:low highIndex:high midIndex:low+increment-1];
        }
    }
}

-(void)merge:(NSMutableArray *)dataSource  lowIndex:(NSInteger)low highIndex:(NSInteger)high  midIndex:(NSInteger)mid{
    NSInteger i=low,j=mid+1;
    
    for (NSInteger k=low; k<=high; k++) {
        self.tempArr[k]=dataSource[k];
    }
    for (NSInteger k=low; k<=high; k++) {
        //左边的元素已经取完，取右半边的元素
        if (i>mid) {
            dataSource[k]= self.tempArr[j++];
        }
        //右边的元素已经取完，取左边的元素
        else if (j>high) {
            dataSource[k]= self.tempArr[i++];
        }
        //如果索引j的值大,那么取左边的值
        else if ([self.tempArr[j] integerValue]<[self.tempArr[i] integerValue]) {
            dataSource[k]=self.tempArr[j++];
        }
        
        else{
            dataSource[k]=self.tempArr[i++];
        }
    }
}


-(void)quickSort:(NSMutableArray *)arr lowIndex:(NSInteger)low highIndex:(NSInteger)high{
    if (low>=high) {
        return;
    }
    NSInteger j=[self partiticon:arr lowIndex:low highIndex:high];//获取切割位置
    [self quickSort:arr lowIndex:low highIndex:j-1];//左边排序数组arr[low..j-1]
    [self quickSort:arr lowIndex:j+1 highIndex:high];
}


-(NSInteger)partiticon:(NSMutableArray *)arr lowIndex:(NSInteger)low highIndex:(NSInteger)high{
    //将数组分为arr[low..i-1] arr[i],arr[i+1..high]
    NSInteger i=low,j=high+1;//左右扫描指针
    NSInteger compareValue=[[arr objectAtIndex:low] integerValue];//最开始的比较值
    while (true) {
        //扫描左右，检查是否需要交换数据
        while ([arr[++i] integerValue]<compareValue) {
            if (i==high) {
                break;
            }
        }
        while ([arr[--j] integerValue]>compareValue) {
            if (j==low) {
                break;
            }
        }
        if (i>=j) {
            break;
        }
        NSString *temp=arr[i];
        arr[i]=arr[j];
        arr[j]=temp;
    }
    NSString *lowTemp=arr[low];
    arr[low]=arr[j];
    arr[j]=lowTemp;
    return j;//返回具体的比较位置，左边都不大于arr[j]，右边都不小于arr[j]
}


@end
