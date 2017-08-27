//
//  RedBlackTree.h
//  AlogrithmAll
//
//  Created by keso on 15/7/19.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef NS_OPTIONS(NSUInteger, RedBlackEnum){
    Red,
    Black
};

@interface RedBlackNode:NSObject

@property  (strong,nonatomic)  NSString  *key;//键

@property  (strong,nonatomic)  NSString  *value;//值

@property (strong,nonatomic) RedBlackNode  *left;//左子树的节点

@property (strong,nonatomic) RedBlackNode  *right;//右子树的节点

@property  (assign,nonatomic)  NSInteger childCount;//以该结点为根的自述中的结点总数

@property  (assign,nonatomic)  RedBlackEnum color;//链接颜色

-(void)initWithData:(NSString *)key  value:(NSString *)value  childCount:(NSInteger)childCount color:(RedBlackEnum)color;

@end


@interface RedBlackTree : NSObject

@property  (strong,nonatomic)  RedBlackNode  *root;//红黑树的根节点

-(NSString  *)get:(NSString *)key;//获取键对应的值

-(void)put:(NSString *)key  value:(NSString *)value;//插入键值对

//判断是否是红色链接
-(Boolean)isRed:(RedBlackNode *)node;

//左旋转
-(RedBlackNode *)rotateLeft:(RedBlackNode *)node;

//右旋转
-(RedBlackNode *)rotateRight:(RedBlackNode *)node;

//反转颜色
-(void)flipColors:(RedBlackNode *)node;

@end
