//
//  DynamicUnionWeight.m
//  AlogrithmAll
//
//  Created by keso on 15/6/14.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "DynamicUnionWeight.h"

@implementation DynamicUnionWeight

-(void)initData:(NSInteger)count{
    self.count=count;
    self.ids=[[NSMutableArray alloc]initWithCapacity:count];
    self.weightArr=[[NSMutableArray alloc]initWithCapacity:count];
  

    for (NSInteger i=0; i<count; i++) {
        [self.ids addObject:[NSNumber numberWithInteger:i]];
        [self.weightArr addObject:[NSNumber numberWithInteger:1]];
    }
    
}

//http://www.cnblogs.com/xiaofeixiang
-(BOOL)connected:(NSInteger)a secondNumber:(NSInteger)b{
    return [self find:a]==[self find:b];
}



-(NSInteger)find:(NSInteger)index{
    while (index!=[[self.ids objectAtIndex:index] integerValue]) {
         self.ids[index]=self.ids[[self.ids[index] integerValue]];
        index=[[self.ids objectAtIndex:index] integerValue];
    }
    return index;
}
//http://www.cnblogs.com/xiaofeixiang
-(void)dynamicUnion:(NSInteger)a secondNumber:(NSInteger)b{
    NSInteger i=[self find:a];
    NSInteger j=[self find:b];
    if (i==j) {
        return;
    }
    NSInteger  weightA=[[self.weightArr objectAtIndex:i] integerValue];
    NSInteger  weightB=[[self.weightArr objectAtIndex:j] integerValue];
 
    if (weightA<weightB) {
        self.ids[i]=[NSNumber numberWithInteger:j];
        self.weightArr[j]=[NSNumber numberWithInteger:weightA+weightB];
    }else{
        self.ids[j]=[NSNumber numberWithInteger:i];
        self.weightArr[i]=[NSNumber numberWithInteger:weightA+weightB];
    }
    self.count--;
}

//

@end
