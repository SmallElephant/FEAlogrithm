//
//  DirectedDFS.h
//  AlogrithmAll
//
//  Created by keso on 15/8/5.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Digraph.h"

@interface DirectedDFS : NSObject

//标记数组
@property  (strong,nonatomic)  NSMutableArray  *marked;

//找到arr中顶点可达的所有顶点
-(instancetype)initDirectedDFSWithVertex:(Digraph *)graph  vertexArr:(NSArray *)arr;
//在graph中找到从vertex可达的所有顶点
-(void)directedDFS:(Digraph *)graph  vertex:(NSInteger)vertex;

//vertex是否可达
-(Boolean)isMarked:(NSInteger)vertex;

@end
