//
//  BinarySearchTable.m
//  AlogrithmAll
//
//  Created by keso on 15/7/5.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "BinarySearchTable.h"

@implementation BinarySearchTable

-(NSMutableArray *)keys{
    if (!_keys) {
        _keys=[[NSMutableArray alloc]initWithCapacity:1];
    }
    return _keys;
}

-(NSMutableArray *)values{
    if (!_values) {
        _values=[[NSMutableArray alloc]initWithCapacity:1];
    }
    return _values;
}
//添加新进入的键值对
-(void)put:(NSString *)key value:(NSString *)value{
    NSInteger index=[self rank:key];
    //如果存在键值对，更新值
    if (index<self.count&&[self.keys[index] isEqualToString:key]) {
        self.values[index]=value;return;
    }
    for (NSInteger  i=self.count; i>index; i--) {
        self.keys[i]=self.keys[i-1];
        self.values[i]=self.values[i-1];
    }
    self.keys[index]=key;
    self.values[index]=value;
    self.count=self.count+1;
}

-(NSString *)get:(NSString *)key{
    //查找键，如果存在则返回值，否则返回null
    NSInteger  index=[self rank:key];
    if (index<self.count&&[self.keys[index] isEqualToString:key]) {
        return self.values[index];
    }
    return NULL;
}

-(NSInteger)rank:(NSString *)key{
    //如果存在键则返回该键的位置，可以理解为表中小于它键的数量
    NSInteger  low=0,high=self.count-1;
    while (low<=high) {
        NSInteger  mid=low+(high-low)/2;
        NSInteger  diff=[key integerValue]-[self.keys[mid] integerValue];
        if (diff>0) {
            low=mid+1;
        }
        else if (diff<0){
            high=mid-1;
        }else{
            return mid;
        }
    }
    return low;
}

@end
