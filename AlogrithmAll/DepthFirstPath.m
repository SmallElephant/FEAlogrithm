//
//  DepthFirstPath.m
//  AlogrithmAll
//
//  Created by keso on 15/8/2.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "DepthFirstPath.h"

@implementation DepthFirstPath

#pragma mark  getter and setter
-(NSMutableArray *)marked{
    if (!_marked) {
        _marked=[[NSMutableArray alloc]initWithCapacity:1];
    }
    return _marked;
}

-(NSMutableArray *)edgeTo{
    if (!_edgeTo) {
        _edgeTo=[[NSMutableArray alloc]initWithCapacity:1];
    }
    return _edgeTo;
}

-(instancetype)initWithGraphAndVertex:(Graph *)graph vertex:(NSInteger)vertex{
    self=[super init];
    if (self) {
        for (NSInteger i=0; i<graph.vertexs;i++) {
            [self.marked addObject:[NSNull null]];
            [self.edgeTo addObject:[NSNull null]];
        }
        self.beginVertex=vertex;
        [self depthSearch:graph vertex:vertex];
    }
    return self;
}
//http://www.cnblogs.com/xiaofeixiang
-(void)depthSearch:(Graph *)graph vertex:(NSInteger)vertex{
    self.marked[vertex]=[NSNumber numberWithBool:true];
    self.count++;
    for (NSInteger i=0; i<[graph.adjDataSource[vertex] count]; i++) {
        NSInteger temp=[[graph.adjDataSource[vertex] objectAtIndex:i] integerValue];
        if (![self hasPathTo:temp]) {
            self.edgeTo[temp]=[NSNumber numberWithInteger:vertex];
            [self depthSearch:graph vertex:temp];
        }
    }
}

-(Boolean)hasPathTo:(NSInteger)vertex{
    return self.marked[vertex]==[NSNull null]?false:[self.marked[vertex] boolValue];
}

-(NSMutableArray *)pathTo:(NSInteger)vertex{
    if (![self hasPathTo:vertex]) {
        return NULL;
    }
    NSMutableArray  *path=[[NSMutableArray alloc]initWithCapacity:1];
    for (NSInteger i=vertex; i!=self.beginVertex; i=[self.edgeTo[i] integerValue]) {
        [path insertObject:[NSNumber numberWithInteger:i] atIndex:0];
    }
    [path insertObject:[NSNumber numberWithInteger:self.beginVertex] atIndex:0];
    return path;
}

@end
