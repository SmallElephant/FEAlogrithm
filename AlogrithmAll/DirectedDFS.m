//
//  DirectedDFS.m
//  AlogrithmAll
//
//  Created by keso on 15/8/5.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "DirectedDFS.h"


@implementation DirectedDFS

#pragma mark  getter and setter
-(NSMutableArray *)marked{
    if (!_marked) {
        _marked=[[NSMutableArray alloc]initWithCapacity:1];
    }
    return _marked;
}


-(instancetype)initDirectedDFSWithVertex:(Digraph *)graph vertexArr:(NSArray *)arr{
    self=[super init];
    if (self) {
        for (NSInteger i=0; i<graph.vertexs;i++) {
            [self.marked addObject:[NSNull null]];
        }
        //遍历有向图中的顶点
        for (NSInteger j=0; j<[arr count]; j++) {
            if (![self isMarked:[arr[j] integerValue]]) {
                [self directedDFS:graph vertex:[arr[j] integerValue]];
            }
        }
    }
    return self;
}
//博客园-FlyElephant:http://www.cnblogs.com/xiaofeixiang/
-(void)directedDFS:(Digraph *)graph vertex:(NSInteger)vertex{
    self.marked[vertex]=[NSNumber numberWithBool:true];
    for (NSInteger i=0; i<[graph.adjDataSource[vertex] count]; i++) {
        NSInteger temp=[[graph.adjDataSource[vertex] objectAtIndex:i] integerValue];
        if (![self isMarked:temp]) {
            [self directedDFS:graph vertex:temp];
        }
    }
}

-(Boolean)isMarked:(NSInteger)vertex{
    return self.marked[vertex]==[NSNull null]?false:[self.marked[vertex] boolValue];
}

@end
