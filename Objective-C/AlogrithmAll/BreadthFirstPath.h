//
//  BreadthFirstPath.h
//  AlogrithmAll
//
//  Created by keso on 15/8/2.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Graph.h"
//深度优先
@interface BreadthFirstPath : NSObject

//记录顶点是否被标记
@property  (strong,nonatomic)  NSMutableArray  *marked;
//起点
@property (assign,nonatomic)  NSInteger  beginVertex;
//从起点到一个顶点的已知路径上的最后一个顶点
@property  (strong,nonatomic)  NSMutableArray *edgeTo;

//找到与七点vertex所有连通的节点
-(instancetype)initWithGraphAndVertex:(Graph *)graph  vertex:(NSInteger)vertex;

-(void)breadthSearch:(Graph *)graph  vertex:(NSInteger)vertex;

-(NSMutableArray *)pathTo:(NSInteger)vertex;

//节点是否被标记
-(Boolean)hasPathTo:(NSInteger)vertex;

@end

