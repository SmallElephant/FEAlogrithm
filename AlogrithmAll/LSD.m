//
//  LSD.m
//  AlogrithmAll
//
//  Created by keso on 15/10/5.
//  Copyright © 2015年 keso. All rights reserved.
//

#import "LSD.h"

@implementation LSD

-(void)lowSort:(NSMutableArray *)dataSource singleLength:(NSInteger)len
{
    NSInteger  sourceCount=[dataSource count];
    NSInteger R=256;
    NSMutableArray  *tempArr=[[NSMutableArray alloc]initWithCapacity:1];
    for (NSInteger i=0; i<sourceCount; i++) {
        [tempArr addObject:[NSNull null]];
    }
    for (NSInteger d=len-1; d>=0; d--) {
        NSMutableArray  *count=[[NSMutableArray alloc]initWithCapacity:1];
        for (NSInteger i=0; i<R+1; i++) {
            [count addObject:[NSNumber numberWithInteger:0]];
        }
        //统计频率
        for (NSInteger i=0; i<sourceCount; i++) {
            NSString  *str=[dataSource objectAtIndex:i];
            NSInteger  charValue=[str characterAtIndex:d]-48;
            count[charValue+1]=[NSNumber numberWithInteger:[count[charValue+1] integerValue]+1];
        }
        for (NSInteger j=0; j<R; j++) {
            count[j+1]=[NSNumber numberWithInteger:[count[j] integerValue]+[count[j+1] integerValue]];
        }
        //将元素从上到下分类
        for (NSInteger m=0; m<sourceCount; m++) {
            NSString  *str=[dataSource objectAtIndex:m];
            NSInteger  charValue=[str characterAtIndex:d]-48;
            tempArr[[count[charValue] integerValue]]=dataSource[m];
            count[charValue]=[NSNumber numberWithInteger:[count[charValue] integerValue]+1];
        }
        //重新排序赋值
        for (NSInteger i=0; i<sourceCount; i++) {
            dataSource[i]=tempArr[i];
        }
    }
}

@end
