//
//  MSD.m
//  AlogrithmAll
//
//  Created by keso on 15/10/6.
//  Copyright © 2015年 keso. All rights reserved.
//

#import "MSD.h"
static int  R=26;

@implementation MSD

-(NSInteger)charAt:(NSString *)str index:(NSInteger)index{
    if (index<str.length) {
        return [str characterAtIndex:index]-97;
    }else{
        return -1;
    }
}

-(void)setupData:(NSMutableArray *)dataSource{
    NSInteger  count=[dataSource count];
    self.tempArr=[[NSMutableArray alloc]initWithCapacity:1];
    for (NSInteger i=0; i<count; i++) {
        [self.tempArr addObject:[NSNull null]];
    }
    [self sort:dataSource low:0 high:count-1 index:0];
}

-(void)sort:(NSMutableArray *)dataSource low:(NSInteger)low high:(NSInteger)high index:(NSInteger)index{
    if (high<=low) {
        return;
    }
    
    NSMutableArray  *count=[[NSMutableArray alloc]initWithCapacity:1];
    for (NSInteger i=0; i<R+2; i++) {
        [count addObject:[NSNumber numberWithInteger:0]];
    }
    //统计频率
    for (NSInteger i=low; i<=high; i++) {
        NSInteger  charValue=[self charAt:dataSource[i] index:index];
        count[charValue+2]=[NSNumber numberWithInteger:[count[charValue+2] integerValue]+1];
    }
    for (NSInteger j=0; j<R+1; j++) {
        count[j+1]=[NSNumber numberWithInteger:[count[j] integerValue]+[count[j+1] integerValue]];
    }
    //将元素从上到下分类
    for (NSInteger m=low; m<=high; m++) {
        NSInteger  tempIndex=[count[[self charAt:dataSource[m] index:index]+1] integerValue];
        self.tempArr[tempIndex]=dataSource[m];
        count[[self charAt:dataSource[m] index:index]+1]=[NSNumber numberWithInteger:tempIndex+1];
    }
    //重新排序赋值
    for (NSInteger i=low; i<=high; i++) {
        dataSource[i]=self.tempArr[i-low];
    }
    //递归循环
    for (NSInteger r=0;r<R;r++) {
        [self sort:dataSource low:low+[count[r] integerValue] high:low+[count[r+1] integerValue]-1 index:index+1];
    }
}

@end
