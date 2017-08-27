//
//  PriorityQueue.m
//  AlogrithmAll
//
//  Created by keso on 15/6/28.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "PriorityQueue.h"

@implementation PriorityQueue

-(id)copyWithZone:(NSZone *)zone{
    PriorityQueue  *queue=[[self class]allocWithZone:zone];
    return self;
}

-(id)mutableCopyWithZone:(NSZone *)zone{
    return self;
}

-(void)sort{
    NSInteger count=[self.dataSource count]-1;
    for (NSInteger k=count/2; k>=1; k--) {
        [self sinkSort:k count:count];
    }
    while (count>1) {
        [self swap:1 secondIndex:count--];
        [self sinkSort:1 count:count];
    }
}

-(void)sinkSort:(NSInteger)index count:(NSInteger)count{
    while (2*index<=count) {
        NSInteger  i=2*index;
        //左右节点大小判断
        if (i<count&&[self lessCompare:i secondIndex:i+1]) {
            i++;
        }
        if (![self lessCompare:index secondIndex:i]) break;
        [self swap:index secondIndex:i];
        index=i;
    }
}

-(void)insert:(NSString *)value{
    [self.dataSource  addObject:value];
    self.maxIndex=self.maxIndex+1;
    [self swimUp:self.maxIndex];
}


-(void)deleteMax{
    [self swap:1 secondIndex:self.maxIndex];//第一个节点和最后一个节点进行交换
    [self.dataSource removeObjectAtIndex:self.maxIndex--];//删除最后的节点
    [self sinkDown:1];//恢复堆的有序性
}

-(void)swimUp:(NSInteger)index{
    //父节点小于当前的子节点
    while (index>1&&[self lessCompare:index/2 secondIndex:index]) {
        [self swap:index/2 secondIndex:index];
        index=index/2;
    }
}

-(void)sinkDown:(NSInteger)index{
    while (2*index<=self.maxIndex) {
        NSInteger  i=2*index;
        //左右节点大小判断
        if (i<self.maxIndex&&[self lessCompare:i secondIndex:i+1]) {
            i++;
        }
        if (![self lessCompare:index secondIndex:i]) break;
        [self swap:index secondIndex:i];
        index=i;
    }
}


-(BOOL)lessCompare:(NSInteger)firstIndex secondIndex:(NSInteger)secondIndex{
    return [[self.dataSource objectAtIndex:firstIndex] integerValue]<[[self.dataSource objectAtIndex:secondIndex] integerValue];
}

-(void)swap:(NSInteger)firstIndex secondIndex:(NSInteger)secondIndex{
    NSString  *temp=[self.dataSource objectAtIndex:firstIndex];
    self.dataSource[firstIndex]=[self.dataSource objectAtIndex:secondIndex];
    self.dataSource[secondIndex]=temp;
}



@end
