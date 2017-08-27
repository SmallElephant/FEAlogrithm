//
//  GraphTwoColor.m
//  AlogrithmAll
//
//  Created by keso on 15/8/3.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "GraphTwoColor.h"

@implementation GraphTwoColor
#pragma mark  getter and setter
-(NSMutableArray *)marked{
    if (!_marked) {
        _marked=[[NSMutableArray alloc]initWithCapacity:1];
    }
    return _marked;
}

-(NSMutableArray *)color{
    if (!_color) {
        _color=[[NSMutableArray alloc]initWithCapacity:1];
    }
    return _color;
}


-(instancetype)initWithGraph:(Graph *)graph{
    self=[super init];
    if (self) {
        for (NSInteger i=0; i<graph.vertexs;i++) {
            [self.marked addObject:[NSNull null]];
            [self.color addObject:[NSNull null]];
        }
        self.isTwoColorable=true;
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
-(void)depthSearch:(Graph *)graph vertex:(NSInteger)vertex{
    self.marked[vertex]=[NSNumber numberWithBool:true];
    
    for (NSInteger i=0; i<[graph.adjDataSource[vertex] count]; i++) {
        NSInteger temp=[[graph.adjDataSource[vertex] objectAtIndex:i] integerValue];
        if (![self isMarked:temp]) {
            //二分图两个相邻的节点颜色不一样
            self.color[temp]=[NSNumber numberWithBool:![self isColor:vertex]];
            [self depthSearch:graph vertex:temp];
        }
        //相邻的节点颜色相同则不是二分图
        else if ([self isColor:temp]==[self isColor:vertex]) self.isTwoColorable=false;
    }
}

-(Boolean)isMarked:(NSInteger)vertex{
    return self.marked[vertex]==[NSNull null]?false:[self.marked[vertex] boolValue];
}

-(Boolean)isColor:(NSInteger)vertex{
    return self.color[vertex]==[NSNull null]?false:[self.color[vertex] boolValue];
}

@end
