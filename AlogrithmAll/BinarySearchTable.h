//
//  BinarySearchTable.h
//  AlogrithmAll
//
//  Created by keso on 15/7/5.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinarySearchTable : NSObject

@property (strong,nonatomic)  NSMutableArray  *keys;

@property  (strong,nonatomic) NSMutableArray  *values;

@property  (assign,nonatomic)  NSInteger  count;

-(void)put:(NSString *)key  value:(NSString *)value;

-(NSString *)get:(NSString *)key;

-(NSInteger)rank:(NSString *)key;

@end
