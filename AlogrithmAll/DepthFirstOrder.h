//
//  DepthFirstOrder.h
//  AlogrithmAll
//
//  Created by keso on 15/8/8.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Digraph.h"

@interface DepthFirstOrder : NSObject

//记录顶点是否被标记
@property  (strong,nonatomic)  NSMutableArray  *marked;

@property  (strong,nonatomic)  NSMutableArray  *preQueue;//所有顶点的前序排列

@property  (strong,nonatomic)  NSMutableArray  *postQueue;//所有顶点的后序排列

@property  (strong,nonatomic)   NSMutableArray  *reversePostStack;//所有顶点的逆后序排列


//找到与七点vertex所有连通的节点
-(instancetype)initWithGraph:(Digraph *)graph;

-(void)depthSearch:(Digraph *)graph  vertex:(NSInteger)vertex;

//节点是否被标记
-(Boolean)isMarked:(NSInteger)vertex;

@end
