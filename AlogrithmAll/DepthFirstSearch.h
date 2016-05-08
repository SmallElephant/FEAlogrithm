//
//  DepthFirstSearch.h
//  AlogrithmAll
//
//  Created by keso on 15/8/2.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Graph.h"

@interface DepthFirstSearch : NSObject
//记录顶点是否被标记
@property  (strong,nonatomic)  NSMutableArray  *marked;

@property (assign,nonatomic)  NSInteger count;
//找到与七点vertex所有连通的节点
-(instancetype)initWithGraphAndVertex:(Graph *)graph  vertex:(NSInteger)vertex;

-(void)depthSearch:(Graph *)graph  vertex:(NSInteger)vertex;

//节点是否被标记
-(Boolean)isMarked:(NSInteger)vertex;

@end
