//
//  DirectedCycle.h
//  AlogrithmAll
//
//  Created by keso on 15/8/8.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Digraph.h"

@interface DirectedCycle : NSObject

//标记数组
@property  (strong,nonatomic)  NSMutableArray  *marked;

@property  (strong,nonatomic)  NSMutableArray  *cycle;//有向环中的所有顶点(存在有向环的情况)

@property  (strong,nonatomic)  NSMutableArray  *onStack;//递归调用的栈上的所有顶点

//从起点到一个顶点的已知路径上的最后一个顶点
@property  (strong,nonatomic)  NSMutableArray *edgeTo;

@property (assign,nonatomic)  Boolean hasCycle;
//初始化
-(instancetype)initWithGraph:(Digraph *)graph;

-(void)depthSearch:(Digraph *)graph  vertex:(NSInteger)vertex;

@end
