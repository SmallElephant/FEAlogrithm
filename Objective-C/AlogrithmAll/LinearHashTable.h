//
//  LinearHashTable.h
//  AlogrithmAll
//
//  Created by keso on 15/7/27.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LinearHashTable : NSObject

-(instancetype)initWithData:(NSInteger)capcity;

@property (assign,nonatomic) NSInteger  count;//符号表中键值对的总数

@property (assign,nonatomic) NSInteger  capticity;//数组的大小

@property (strong,nonatomic) NSMutableArray *keys;

@property (strong,nonatomic) NSMutableArray *values;

-(NSInteger)getHashCodeByKey:(NSString *)key;

-(void)putData:(NSString *)key value:(NSString *)value;

-(NSString *)getValue:(NSString *)key;

@end
