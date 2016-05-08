//
//  RedBlackTree.m
//  AlogrithmAll
//
//  Created by keso on 15/7/19.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "RedBlackTree.h"

@implementation RedBlackNode

-(void)initWithData:(NSString *)key value:(NSString *)value childCount:(NSInteger)childCount color:(RedBlackEnum)color{
    self.key=key;
    self.value=value;
    self.childCount=childCount;
    self.color=color;
}

@end

@implementation RedBlackTree

-(NSString *)get:(NSString *)key{
    return [self getByKey:self.root key:key];
}

-(NSString *)getByKey:(RedBlackNode *)node  key:(NSString *)key{
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
    self.root.color=Black;
}

-(RedBlackNode *)putNode:(RedBlackNode *)node  key:(NSString *)key  value:(NSString *)value{
    if (node==nil) {
        RedBlackNode  *newNode=[[RedBlackNode alloc]init];
        [newNode initWithData:key value:value childCount:1 color:Red];
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
    //将含有红色右链接的3-结点(4-结点)向左旋转
    if ([self isRed:node.right]&&![self isRed:node.left]) {
        node=[self rotateLeft:node];
    }
    //连续红色左链接向右旋转
    if ([self isRed:node.left]&&[self isRed:node.left.left]) {
        node=[self rotateRight:node];
    }
    //红色链接向上传递
    if ([self isRed:node.left]&&[self isRed:node.right]) {
        [self flipColors:node];
    }
    
    node.childCount=[self childSizeCount:node.left]+[self childSizeCount:node.right]+1;
    return node;
}

-(NSInteger)childSize{
    return [self childSizeCount:self.root];
}

-(NSInteger)childSizeCount:(RedBlackNode *)node{
    if (node==nil) {
        return 0;
    }else{
        return node.childCount;
    }
}

-(Boolean)isRed:(RedBlackNode *)node{
    if (!node) {
        return false;
    }
    return node.color==Red;
}
//左旋转，将较大的值作为根节点
-(RedBlackNode *)rotateLeft:(RedBlackNode *)node{
    RedBlackNode  *rightNode=node.right;
    node.right=rightNode.left;
    rightNode.left=node;
    rightNode.color=node.color;
    node.color=Red;
    rightNode.childCount=node.childCount;
    node.childCount=[self childSizeCount:node.left]+[self childSizeCount:node.right]+1;
    return rightNode;
}

//右旋转，将较小的值作为根节点
-(RedBlackNode *)rotateRight:(RedBlackNode *)node{
    RedBlackNode  *leftNode=node.left;
    node.left=leftNode.right;
    leftNode.right=node;
    leftNode.color=node.color;
    node.color=Red;
    leftNode.childCount=node.childCount;
    node.childCount=[self childSizeCount:node.left]+[self childSizeCount:node.right]+1;
    return leftNode;
}
//反转颜色
-(void)flipColors:(RedBlackNode *)node{
    node.color=Red;
    node.left.color=Black;
    node.right.color=Black;
}

@end
