//
//  Queue.h
//  AlogrithmAll
//
//  Created by keso on 15/6/8.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface Queue : NSObject

//最先入列的元素
@property  (strong,nonatomic) Node  *first;

//最后入列的元素
@property  (strong,nonatomic)  Node  *last;

@property  (assign,nonatomic) NSInteger  count;

-(BOOL)isEmpty;

-(NSInteger)size;

-(void)enqueue:(NSString *)value;

-(NSString *)dequeue;

-(void)remove:(NSString *)value;

@end
