//
//  KeyIndeSort.m
//  AlogrithmAll
//
//  Created by keso on 15/10/5.
//  Copyright © 2015年 keso. All rights reserved.
//

#import "KeyIndexSort.h"
@implementation keyIndexModel

-(instancetype)initWithKeyValue:(NSInteger)key value:(NSString *)value{
    self=[super init];
    if (self) {
        self.key=key;
        self.value=value;
    }
    return self;
}

@end

@implementation KeyIndexSort


-(void)sort:(NSMutableArray *)dataSource categoryNumber:(NSInteger)number{
    NSInteger  len=[dataSource count];
    NSMutableArray  *tempArr=[[NSMutableArray alloc]initWithCapacity:1];
    //http://www.cnblogs.com/xiaofeixiang/
    for (NSInteger i=0; i<len; i++) {
        [tempArr addObject:[NSNull null]];
    }
    NSMutableArray *count=[[NSMutableArray alloc]initWithCapacity:1];
    for (NSInteger i=0; i<number+1; i++) {
        [count addObject:[NSNumber numberWithInteger:0]];
    }
    //统计每个分类的次数
    for (NSInteger i=0;i<len; i++) {
        keyIndexModel  *model=dataSource[i];
        count[model.key+1]=[NSNumber numberWithInteger:[count[model.key+1] integerValue]+1];
    }
    
    //将出现的次数转换为索引，第一组3次，第二组5次，因此对应第三组开始的索引是8
    for (NSInteger j=0; j<number; j++) {
        count[j+1]=[NSNumber numberWithInteger:[count[j] integerValue]+[count[j+1] integerValue]];
    }
    //将元素从上到下分类
    for (NSInteger m=0; m<len; m++) {
        keyIndexModel  *model=dataSource[m];
        tempArr[[count[model.key] integerValue]]=model;
        count[model.key]=[NSNumber numberWithInteger:[count[model.key] integerValue]+1];
    }
    //重新排序赋值
    for (NSInteger i=0; i<len; i++) {
        dataSource[i]=tempArr[i];
    }
    
}


@end
