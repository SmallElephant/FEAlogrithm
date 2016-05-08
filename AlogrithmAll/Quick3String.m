//
//  Quick3String.m
//  AlogrithmAll
//
//  Created by keso on 15/10/6.
//  Copyright © 2015年 keso. All rights reserved.
//

#import "Quick3String.h"

@implementation Quick3String

-(NSInteger)charAt:(NSString *)str index:(NSInteger)index{
    if (index<str.length) {
        return [str characterAtIndex:index]-97;
    }else{
        return -1;
    }
}

-(void)exchange:(NSMutableArray *)dataSource  first:(NSInteger)first  second:(NSInteger)second{
    NSString  *temp=dataSource[first];
    dataSource[first]=dataSource[second];
    dataSource[second]=temp;
}

-(void)sort:(NSMutableArray *)dataSource{
    [self sort:dataSource low:0 high:[dataSource count]-1 index:0];
}

-(void)sort:(NSMutableArray *)dataSource  low:(NSInteger)low  high:(NSInteger)high  index:(NSInteger)index{
    if (high<=low) {
        return;
    }
    NSInteger left=low,right=high;
    NSInteger  middle=[self charAt:dataSource[low] index:index];
    NSInteger i=low+1;
    while (i<=right) {
        NSInteger t=[self charAt:dataSource[i] index:index];
        if (t<middle) {
            [self exchange:dataSource first:left++ second:i++];
        }else if(t>middle){
            [self exchange:dataSource first:i second:right--];
        }else{
            i++;
        }
    }
    [self sort:dataSource low:low high:left-1 index:index];
    if (middle>=0) {
        [self sort:dataSource low:left high:right index:index+1];
    }
    [self sort:dataSource low:right+1 high:high index:index];
}

@end
