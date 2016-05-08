//
//  DepthFirstOrder.m
//  AlogrithmAll
//
//  Created by keso on 15/8/8.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "DepthFirstOrder.h"

@implementation DepthFirstOrder

#pragma mark  getter and setter
-(NSMutableArray *)marked{
    if (!_marked) {
        _marked=[[NSMutableArray alloc]initWithCapacity:1];
    }
    return _marked;
}

-(NSMutableArray *)preQueue{
    if (!_preQueue) {
        _preQueue=[[NSMutableArray alloc]initWithCapacity:1];
    }
    return _preQueue;
}

-(NSMutableArray *)postQueue{
    if (!_postQueue) {
        _postQueue=[[NSMutableArray alloc]initWithCapacity:1];
    }
    return _postQueue;
}

-(NSMutableArray *)reversePostStack{
    if (!_reversePostStack) {
        _reversePostStack=[[NSMutableArray alloc]initWithCapacity:1];
    }
    return _reversePostStack;
}

-(instancetype)initWithGraph:(Digraph *)graph{
    self=[super init];
    if (self) {
        for (NSInteger i=0; i<graph.vertexs;i++) {
            [self.marked addObject:[NSNull null]];
        }
        //遍历图的顶点
        for (NSInteger s=0; s<graph.vertexs; s++) {
            if (![self isMarked:s]) {
                [self depthSearch:graph vertex:s];
            }
        }
    }
    return self;
}
//http://www.cnblogs.com/xiaofeixiang/
-(void)depthSearch:(Digraph *)graph vertex:(NSInteger)vertex{
    [self.preQueue addObject:[NSNumber numberWithInteger:vertex]];
    
    self.marked[vertex]=[NSNumber numberWithBool:true];
    for (NSInteger i=0; i<[graph.adjDataSource[vertex] count]; i++) {
        NSInteger temp=[[graph.adjDataSource[vertex] objectAtIndex:i] integerValue];
        if (![self isMarked:temp]) {
            [self depthSearch:graph vertex:temp];
        }
    }
    
    [self.postQueue addObject:[NSNumber numberWithInteger:vertex]];
    [self.reversePostStack insertObject:[NSNumber numberWithInteger:vertex] atIndex:0];
}

-(Boolean)isMarked:(NSInteger)vertex{
    return self.marked[vertex]==[NSNull null]?false:[self.marked[vertex] boolValue];
}

@end
