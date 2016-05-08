//
//  Digraph.m
//  AlogrithmAll
//
//  Created by keso on 15/8/4.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "Digraph.h"

@implementation Digraph

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
    self.edges=self.edges+1;
}

-(Digraph *)reverse{    
    Digraph  *digraph=[[Digraph alloc]initWithVertex:self.vertexs];
    for (NSInteger i=0; i<self.vertexs; i++) {
        NSMutableArray  *tempArr=self.adjDataSource[i];
        for (NSInteger j=0; j<[tempArr count]; j++) {
            [digraph addEdges:[tempArr[j] integerValue] endVertex:i];
        }
    }
    return digraph;
}

#pragma mark getter and setter
-(NSMutableArray *)adjDataSource{
    if (!_adjDataSource) {
        _adjDataSource=[[NSMutableArray alloc]initWithCapacity:1];
    }
    return _adjDataSource;
}

@end
