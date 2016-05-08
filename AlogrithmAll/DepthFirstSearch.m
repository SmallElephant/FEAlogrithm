//
//  DepthFirstSearch.m
//  AlogrithmAll
//
//  Created by keso on 15/8/2.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "DepthFirstSearch.h"

@implementation DepthFirstSearch

#pragma mark  getter and setter
-(NSMutableArray *)marked{
    if (!_marked) {
        _marked=[[NSMutableArray alloc]initWithCapacity:1];
    }
    return _marked;
}

-(instancetype)initWithGraphAndVertex:(Graph *)graph vertex:(NSInteger)vertex{
    self=[super init];
    if (self) {
        for (NSInteger i=0; i<graph.vertexs;i++) {
            [self.marked addObject:[NSNull null]];
        }
        [self depthSearch:graph vertex:vertex];
    }
    return self;
}
//http://www.cnblogs.com/xiaofeixiang/
-(void)depthSearch:(Graph *)graph vertex:(NSInteger)vertex{
    self.marked[vertex]=[NSNumber numberWithBool:true];
    self.count++;
    for (NSInteger i=0; i<[graph.adjDataSource[vertex] count]; i++) {
        NSInteger temp=[[graph.adjDataSource[vertex] objectAtIndex:i] integerValue];
        if (![self isMarked:temp]) {
            [self depthSearch:graph vertex:temp];
        }
    }
}

-(Boolean)isMarked:(NSInteger)vertex{
    return self.marked[vertex]==[NSNull null]?false:[self.marked[vertex] boolValue];
}

@end
