//
//  DynamicUnion.h
//  AlogrithmAll
//
//  Created by keso on 15/6/14.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DynamicUnion : NSObject



@property (strong,nonatomic) NSMutableArray  *ids;//存储每个触点对应的值


@property (assign,nonatomic) NSInteger  count;//已经连通的连接的数量


-(BOOL)connected:(NSInteger)a secondNumber:(NSInteger)b;//是否已经存在连接或者等价的连接

-(NSInteger)find:(NSInteger)index;//取出触点的值

-(void)dynamicUnion:(NSInteger)a secondNumber:(NSInteger)b;//a,b之间建立一个连接

-(void)initData:(NSInteger)count;//初始化触点的数量


@end
