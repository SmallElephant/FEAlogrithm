//
//  BinarySearchTree.m
//  AlogrithmAll
//
//  Created by keso on 15/7/9.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "BinarySearchTree.h"

@implementation BinaryNode

-(void)initWithData:(NSString *)key value:(NSString *)value childCount:(NSInteger)childCount{
    self.key=key;
    self.value=value;
    self.childCount=childCount;
}

@end

@implementation BinarySearchTree

-(NSString *)get:(NSString *)key{
    return [self getByKey:self.root key:key];
}

-(NSString *)getByKey:(BinaryNode *)node  key:(NSString *)key{
    //在node为根结点的子树种查找并返回key所对应的值
    //如果找不到返回null
    if (node==nil) {
        return nil;
    }
    //左右节点进行比较，每个结点的键值大于左子树的结点值小于右子树的结点值
    NSInteger  compare=[key integerValue]-[node.key integerValue];
    if (compare>0) {
        return [self getByKey:node.right key:key];
    }else if(compare<0){
        return [self getByKey:node.left key:key];
    }else{
        return node.value;
    }
}
//http://www.cnblogs.com/xiaofeixiang
-(void)put:(NSString *)key value:(NSString *)value{
    //查找键值，找到则更新它的值，否则为它创建一个新的结点
    self.root=[self putNode:self.root key:key value:value];
}

-(BinaryNode *)putNode:(BinaryNode *)node  key:(NSString *)key  value:(NSString *)value{
    if (node==nil) {
        BinaryNode  *newNode=[[BinaryNode alloc]init];
        [newNode initWithData:key value:value childCount:1];
        return newNode;
    }
    NSInteger  compare=[key integerValue]-[node.key integerValue];
    if (compare>0) {
        node.right=[self putNode:node.right key:key value:value];
    }else if(compare<0){
        node.left=[self putNode:node.left key:key value:value];
    }else{
        node.value=value;
    }
    node.childCount=[self childSizeCount:node.left]+[self childSizeCount:node.right]+1;
    return node;
}

-(NSInteger)childSize{
    return [self childSizeCount:self.root];
}

-(NSInteger)childSizeCount:(BinaryNode *)node{
    if (node==nil) {
        return 0;
    }else{
        return node.childCount;
    }
}

@end
