//
//  GrapCC.h
//  AlogrithmAll
//
//  Created by keso on 15/8/3.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Graph.h"

@interface GraphCC : NSObject

//记录顶点是否被标记
@property  (strong,nonatomic)  NSMutableArray  *marked;

@property (assign,nonatomic)  NSInteger count;//连通的分量

@property  (strong,nonatomic)  NSMutableArray  *ids;//顶点所在的连通分量的标识符

//连通分量递归初始化
-(instancetype)initWithGraph:(Graph *)graph;

-(void)depthSearch:(Graph *)graph  vertex:(NSInteger)vertex;


@end
