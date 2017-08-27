//
//  Digraph.h
//  AlogrithmAll
//
//  Created by keso on 15/8/4.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Digraph : NSObject

//顶点的总数
@property  (assign,nonatomic) NSInteger  vertexs;
//边的数总数
@property (assign,nonatomic) NSInteger  edges;
//连接点的边
@property (strong,nonatomic)  NSMutableArray  *adjDataSource;

-(instancetype)initWithVertex:(NSInteger)vertexs;
//添加一条有向边 startVertex→endVertex
-(void)addEdges:(NSInteger)startVertex  endVertex:(NSInteger)endVertex;


-(Digraph *)reverse;//该图的反向图

@end
