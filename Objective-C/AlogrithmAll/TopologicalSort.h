//
//  TopologicalSort.h
//  AlogrithmAll
//
//  Created by keso on 15/8/8.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Digraph.h"
@interface TopologicalSort : NSObject

@property  (strong,nonatomic)  NSMutableArray  *order;

-(instancetype)initWithDigraph:(Digraph *)graph;

@end
