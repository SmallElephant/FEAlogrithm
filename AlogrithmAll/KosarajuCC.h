//
//  KosarajuCC.h
//  AlogrithmAll
//
//  Created by keso on 15/8/9.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Digraph.h"

@interface KosarajuCC : NSObject

//记录顶点是否被标记
@property  (strong,nonatomic)  NSMutableArray  *marked;

@property (assign,nonatomic)  NSInteger count;//连通的分量

@property  (strong,nonatomic)  NSMutableArray  *ids;//顶点所在的连通分量的标识符

//连通分量递归初始化
-(instancetype)initWithGraph:(Digraph *)graph;

-(void)depthSearch:(Digraph *)graph  vertex:(NSInteger)vertex;
//判断两个顶点之间是否存在连通性
-(BOOL)stronglyConnected:(NSInteger)vertex  otherVertex:(NSInteger)otherVertex;

@end
