//
//  MSD.h
//  AlogrithmAll
//
//  Created by keso on 15/10/6.
//  Copyright © 2015年 keso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MSD : NSObject

@property  (strong,nonatomic) NSMutableArray  *tempArr;

-(void)setupData:(NSMutableArray *)dataSource;

-(void)sort:(NSMutableArray *)dataSource  low:(NSInteger)low  high:(NSInteger)high  index:(NSInteger)index;

@end
