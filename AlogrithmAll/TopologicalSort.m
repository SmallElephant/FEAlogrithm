//
//  TopologicalSort.m
//  AlogrithmAll
//
//  Created by keso on 15/8/8.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "TopologicalSort.h"
#import "DirectedCycle.h"
#import "DepthFirstOrder.h"

@implementation TopologicalSort

#pragma mark getter and  setter
-(NSMutableArray *)order{
    if (!_order) {
        _order=[[NSMutableArray alloc]initWithCapacity:1];
    }
    return _order;
}

-(instancetype)initWithDigraph:(Digraph *)graph{
    self=[super init];
    if (self) {
        DirectedCycle *cyclefinder=[[DirectedCycle alloc]initWithGraph:graph];
        if (!cyclefinder.hasCycle) {
            DepthFirstOrder  *dfs=[[DepthFirstOrder alloc]initWithGraph:graph];
            self.order=dfs.reversePostStack;
        }
    }
    return self;
}

@end
