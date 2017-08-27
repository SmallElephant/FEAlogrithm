//
//  Graph.m
//  AlogrithmAll
//
//  Created by keso on 15/7/31.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "Graph.h"

@implementation Graph

-(instancetype)initWithVertex:(NSInteger)vertexs{
    self=[super init];
    if (self) {
        self.vertexs=vertexs;
        for (NSInteger i=0; i<vertexs; i++) {
            NSMutableArray  *neighbourVertex=[[NSMutableArray alloc]initWithCapacity:1];
            [self.adjDataSource addObject:neighbourVertex];//创建邻接表,将所有链表初始化为空
        }
    }
    return self;
}
//http://www.cnblogs.com/xiaofeixiang
-(void)addEdges:(NSInteger)startVertex endVertex:(NSInteger)endVertex{
    //将endVertex添加到startVertex的链表中
    [self.adjDataSource[startVertex] insertObject:[NSNumber numberWithInteger:endVertex] atIndex:0];
    //将startVertext添加到endVertex的链表中
    [self.adjDataSource[endVertex] insertObject:[NSNumber numberWithInteger:startVertex] atIndex:0];
    self.edges=self.edges+1;
}

#pragma mark getter and setter
-(NSMutableArray *)adjDataSource{
    if (!_adjDataSource) {
        _adjDataSource=[[NSMutableArray alloc]initWithCapacity:1];
    }
    return _adjDataSource;
}

@end
