//
//  SequenceTable.m
//  AlogrithmAll
//
//  Created by keso on 15/7/5.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "SequenceTable.h"

@implementation SequenceTable

-(void)put:(NSString *)key value:(NSString *)value{
    //遍历节点
    for (BaseNode  *x=self.first; x!=NULL; x=x.next) {
        if ([x.key isEqualToString:key]) {
            x.value=value;return;
        }
    }
    //新的节点插在最前面，结构类似栈
    BaseNode  *tempNode=self.first;
    self.first=[[BaseNode alloc]init];
    [self.first setUpData:key value:value next:tempNode];
}

-(NSString *)get:(NSString *)key{
    //遍历数组存在返回值，否则返回null
    for (BaseNode  *node=self.first; node!=NULL; node=node.next) {
        if ([key isEqualToString:node.key]) {
            return  node.value;
        }
    }
    return NULL;
}

@end
