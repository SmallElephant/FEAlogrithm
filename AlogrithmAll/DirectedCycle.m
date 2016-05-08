//
//  DirectedCycle.m
//  AlogrithmAll
//
//  Created by keso on 15/8/8.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "DirectedCycle.h"

@implementation DirectedCycle

#pragma mark  getter and setter
-(NSMutableArray *)marked{
    if (!_marked) {
        _marked=[[NSMutableArray alloc]initWithCapacity:1];
    }
    return _marked;
}


-(NSMutableArray *)onStack{
    if (!_onStack) {
        _onStack=[[NSMutableArray alloc]initWithCapacity:1];
    }
    return _onStack;
}
-(NSMutableArray *)edgeTo{
    if (!_edgeTo) {
        _edgeTo=[[NSMutableArray alloc]initWithCapacity:1];
    }
    return _edgeTo;
}


-(instancetype)initWithGraph:(Digraph *)graph{
    self=[super init];
    if (self) {
        for (NSInteger i=0; i<graph.vertexs;i++) {
            [self.onStack addObject:[NSNull null]];
            [self.edgeTo addObject:[NSNull null]];
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
    self.onStack[vertex]=[NSNumber numberWithBool:true];
    self.marked[vertex]=[NSNumber numberWithBool:true];
    
    for (NSInteger i=0; i<[graph.adjDataSource[vertex] count]; i++) {
        NSInteger temp=[[graph.adjDataSource[vertex] objectAtIndex:i] integerValue];
        if ([self hasCycle]) return;
        else if (![self isMarked:temp]) {
            self.edgeTo[temp]=[NSNumber numberWithInteger:vertex];
            [self depthSearch:graph vertex:temp];
        }else if([self isStack:temp]){
            
            self.cycle=[[NSMutableArray alloc]initWithCapacity:1];
            for (NSInteger i=vertex; i!=temp; i=[self.edgeTo[i] integerValue]) {
                [self.cycle insertObject:[NSNumber numberWithInteger:i] atIndex:0];
            }
            [self.cycle insertObject:[NSNumber numberWithInteger:temp] atIndex:0];
            [self.cycle insertObject:[NSNumber numberWithInteger:vertex] atIndex:0];
        }
    }
    self.onStack[vertex]=[NSNumber numberWithBool:false];
}

-(Boolean)hasCycle{
    return [self.cycle count]>0;
}

-(Boolean)isMarked:(NSInteger)vertex{
    return self.marked[vertex]==[NSNull null]?false:[self.marked[vertex] boolValue];
}

-(Boolean)isStack:(NSInteger)vertex{
    return self.onStack[vertex]==[NSNull null]?false:[self.onStack[vertex] boolValue];
}

@end
