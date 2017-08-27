//
//  BreadthFirstPath.m
//  AlogrithmAll
//
//  Created by keso on 15/8/2.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "BreadthFirstPath.h"

@implementation BreadthFirstPath

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
        [self breadthSearch:graph vertex:vertex];
    }
    return self;
}
//http://www.cnblogs.com/xiaofeixiang
-(void)breadthSearch:(Graph *)graph vertex:(NSInteger)vertex{
    NSMutableArray *queue=[[NSMutableArray alloc]initWithCapacity:1];
    self.marked[vertex]=[NSNumber numberWithBool:true];
    [queue addObject:[NSNumber numberWithInteger:vertex]];
    
    
    
    while ([queue count]>0) {
        NSInteger header=[[queue objectAtIndex:0] integerValue];
        [queue removeObjectAtIndex:0];
        for (NSInteger i=0; i<[graph.adjDataSource[header] count]; i++) {
            
            
            NSInteger temp=[[graph.adjDataSource[header] objectAtIndex:i] integerValue];
            
            
            if (![self isMarked:temp]) {
                self.marked[temp]=[NSNumber numberWithBool:true];
                self.edgeTo[temp]=[NSNumber numberWithInteger:header];
                [queue addObject:[NSNumber numberWithInteger:temp]];
            }
        }
    }

}

-(Boolean)isMarked:(NSInteger)vertex{
    return self.marked[vertex]==[NSNull null]?false:[self.marked[vertex] boolValue];
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
