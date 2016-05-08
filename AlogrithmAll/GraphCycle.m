//
//  GraphCycle.m
//  AlogrithmAll
//
//  Created by keso on 15/8/3.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "GraphCycle.h"

@implementation GraphCycle
#pragma mark  getter and setter
-(NSMutableArray *)marked{
    if (!_marked) {
        _marked=[[NSMutableArray alloc]initWithCapacity:1];
    }
    return _marked;
}


-(instancetype)initWithGraph:(Graph *)graph{
    self=[super init];
    if (self) {
        for (NSInteger i=0; i<graph.vertexs;i++) {
            [self.marked addObject:[NSNull null]];
        }
        //遍历图的顶点
        for (NSInteger s=0; s<graph.vertexs; s++) {
            if (![self isMarked:s]) {
                [self depthSearch:graph vertex:s nextVertex:s];
            }
        }
    }
    return self;
}
//http://www.cnblogs.com/xiaofeixiang/
-(void)depthSearch:(Graph *)graph vertex:(NSInteger)vertex nextVertex:(NSInteger)nextVertex{
    self.marked[vertex]=[NSNumber numberWithBool:true];
    for (NSInteger i=0; i<[graph.adjDataSource[vertex] count]; i++) {
        NSInteger temp=[[graph.adjDataSource[vertex] objectAtIndex:i] integerValue];
        if (![self isMarked:temp]) {
            [self depthSearch:graph vertex:temp nextVertex:vertex];
        }
        //最开始检测到的环是0-1-2
        else if (temp!=nextVertex) self.hasCycle=true;
    }
}

-(Boolean)isMarked:(NSInteger)vertex{
    return self.marked[vertex]==[NSNull null]?false:[self.marked[vertex] boolValue];
}

@end

