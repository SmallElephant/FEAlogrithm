//
//  BinarySearchTree.h
//  AlogrithmAll
//
//  Created by keso on 15/7/9.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinaryNode:NSObject

@property  (strong,nonatomic)  NSString  *key;//键

@property  (strong,nonatomic)  NSString  *value;//值

@property (strong,nonatomic) BinaryNode  *left;//左子树的节点

@property (strong,nonatomic) BinaryNode  *right;//右子树的节点

@property  (assign,nonatomic)  NSInteger childCount;//以该结点为根的自述中的结点总数

-(void)initWithData:(NSString *)key  value:(NSString *)value  childCount:(NSInteger)childCount;

@end

@interface BinarySearchTree : NSObject

@property  (strong,nonatomic)  BinaryNode  *root;//二叉平衡树的根节点

-(NSString  *)get:(NSString *)key;//获取键对应的值

-(void)put:(NSString *)key  value:(NSString *)value;//插入键值对

@end
