//
//  KosarajuCC.m
//  AlogrithmAll
//
//  Created by keso on 15/8/9.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "KosarajuCC.h"
#import "DepthFirstOrder.h"

@implementation KosarajuCC

#pragma mark  getter and setter
-(NSMutableArray *)marked{
    if (!_marked) {
        _marked=[[NSMutableArray alloc]initWithCapacity:1];
    }
    return _marked;
}

-(NSMutableArray *)ids{
    if (!_ids) {
        _ids=[[NSMutableArray alloc]initWithCapacity:1];
    }
    return _ids;
}

-(instancetype)initWithGraph:(Digraph *)graph{
    self=[super init];
    if (self) {
        for (NSInteger i=0; i<graph.vertexs;i++) {
            [self.marked addObject:[NSNull null]];
            [self.ids addObject:[NSNull null]];
        }
        DepthFirstOrder *order=[[DepthFirstOrder alloc]initWithGraph:[graph reverse]];
        //遍历图的顶点
        for (NSInteger j=0; j<[order.reversePostStack count]; j++) {
            NSInteger  temp=[[order.reversePostStack objectAtIndex:j] integerValue];
            if (![self isMarked:temp]) {
                [self depthSearch:graph vertex:temp];
                self.count++;
            }
        }
    }
    return self;
}
//博客园-FlyElephant:http://www.cnblogs.com/xiaofeixiang/
-(void)depthSearch:(Digraph *)graph vertex:(NSInteger)vertex{
    self.marked[vertex]=[NSNumber numberWithBool:true];
    //同一分量中顶点的赋值
    self.ids[vertex]=[NSNumber numberWithInteger:self.count];
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

-(BOOL)stronglyConnected:(NSInteger)vertex  otherVertex:(NSInteger)otherVertex{
    return [self.ids[vertex] integerValue]==[self.ids[otherVertex] integerValue];
}
@end
