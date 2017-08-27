//
//  GraphCycle.h
//  AlogrithmAll
//
//  Created by keso on 15/8/3.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Graph.h"

@interface GraphCycle : NSObject

//记录顶点是否被标记
@property  (strong,nonatomic)  NSMutableArray  *marked;

@property (assign,nonatomic)  Boolean hasCycle;
//初始化
-(instancetype)initWithGraph:(Graph *)graph;

-(void)depthSearch:(Graph *)graph  vertex:(NSInteger)vertex nextVertex:(NSInteger)nextVertex;

@end
