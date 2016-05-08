//
//  HashTable.h
//  AlogrithmAll
//
//  Created by keso on 15/7/26.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SequenceTable.h"

@interface HashTable : NSObject

-(instancetype)initWithData:(NSInteger)linkCount;

@property  (assign,nonatomic) NSInteger  count;//键值对总数

@property (assign,nonatomic) NSInteger  linkCount;//散列表的大小

@property  (strong,nonatomic)  NSMutableArray  *sequenceTableArr;//存储顺序链表的数组

-(NSInteger)getHashCodeByKey:(NSString *)key;

-(void)putData:(NSString *)key value:(NSString *)value;

-(NSString *)getValue:(NSString *)key;


@end
