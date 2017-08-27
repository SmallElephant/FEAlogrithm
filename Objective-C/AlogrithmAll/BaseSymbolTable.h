//
//  SymbolTable.h
//  AlogrithmAll
//
//  Created by keso on 15/7/5.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 符号表是一种存储键值对的数据结构，支持两种操作：插入(put)，即将一组新的键值对存入表中；查找(get)，即根据给定的键得到对应的值
 */

@interface BaseNode : NSObject

@property  (strong,nonatomic)  NSString  *key;

@property  (strong,nonatomic)  NSString  *value;

@property  (strong,nonatomic)  BaseNode  *next;

-(void)setUpData:(NSString *)key  value:(NSString *)value  next:(BaseNode *)next;

@end

@interface BaseSymbolTable : NSObject


-(void)put:(NSString *)key  value:(NSString *)value;

-(NSString *)getByKey:(NSString *)key;

-(void)deleteKey:(NSString *)key;



@end
