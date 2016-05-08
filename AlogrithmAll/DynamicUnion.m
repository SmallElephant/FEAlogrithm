//
//  DynamicUnion.m
//  AlogrithmAll
//
//  Created by keso on 15/6/14.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "DynamicUnion.h"

@implementation DynamicUnion


-(void)initData:(NSInteger)count{
    self.count=count;
    self.ids=[[NSMutableArray alloc]initWithCapacity:count];
    for (NSInteger i=0; i<count; i++) {
        [self.ids addObject:[NSNumber numberWithInteger:i]];
    }
}

//http://www.cnblogs.com/xiaofeixiang
-(BOOL)connected:(NSInteger)a secondNumber:(NSInteger)b{
    return [self find:a]==[self find:b];
}

-(NSInteger)find:(NSInteger)index{
    return [[self.ids objectAtIndex:index] integerValue];
}

-(void)dynamicUnion:(NSInteger)a secondNumber:(NSInteger)b{
    NSInteger aID=[self find:a];
    NSInteger bID=[self find:b];
    if (aID==bID) {
        return;
    }
    for (NSInteger i=0;i<[self.ids count]; i++) {
        if ([[self.ids objectAtIndex:i] integerValue]==aID) {
            self.ids[i]=[NSNumber numberWithInteger:bID];
        }
    }
    self.count=self.count-1;
}

//第二种实现方式 实现一个复杂的树形的结构
//-(NSInteger)find:(NSInteger)index{
//    while (index!=[[self.ids objectAtIndex:index] integerValue]) {
//        index=[[self.ids objectAtIndex:index] integerValue];
//    }
//    return index;
//}
////http://www.cnblogs.com/xiaofeixiang
//-(void)dynamicUnion:(NSInteger)a secondNumber:(NSInteger)b{
//    NSInteger aRoot=[self find:a];
//    NSInteger bRoot=[self find:b];
//    if (aRoot==bRoot) {
//        return;
//    }
//    self.ids[aRoot]=[NSNumber numberWithInteger:bRoot];
//    self.count--;
// }





@end
