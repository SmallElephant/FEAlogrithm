//
//  GraphTwoColor.h
//  AlogrithmAll
//
//  Created by keso on 15/8/3.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Graph.h"

@interface GraphTwoColor : NSObject

//标记数组
@property  (strong,nonatomic)  NSMutableArray  *marked;

@property  (strong,nonatomic)  NSMutableArray  *color;

@property (assign,nonatomic)  Boolean isTwoColorable;
//初始化
-(instancetype)initWithGraph:(Graph *)graph;
//深度搜索
-(void)depthSearch:(Graph *)graph  vertex:(NSInteger)vertex;


@end
