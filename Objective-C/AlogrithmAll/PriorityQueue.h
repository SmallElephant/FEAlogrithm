//
//  PriorityQueue.h
//  AlogrithmAll
//
//  Created by keso on 15/6/28.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PriorityQueue : NSObject<NSMutableCopying,NSCopying>

@property  (strong,nonatomic)  NSMutableArray  *dataSource;

@property  (assign,nonatomic)  NSInteger  maxIndex;

//让一个无序堆变成一个有序堆
-(void)sort;

//插入元素
-(void)insert:(NSString *)value;

//删除最大元素
-(void)deleteMax;


-(BOOL)lessCompare:(NSInteger)firstIndex  secondIndex:(NSInteger)secondIndex;

-(void)swap:(NSInteger)firstIndex  secondIndex:(NSInteger)secondIndex;

@end
