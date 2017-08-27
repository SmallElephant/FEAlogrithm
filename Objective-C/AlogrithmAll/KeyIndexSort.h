//
//  KeyIndeSort.h
//  AlogrithmAll
//
//  Created by keso on 15/10/5.
//  Copyright © 2015年 keso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface keyIndexModel:NSObject

@property  (assign,nonatomic)  NSInteger  key;

@property  (strong,nonatomic)  NSString  *value;

-(instancetype)initWithKeyValue:(NSInteger)key  value:(NSString *)value;

@end

@interface KeyIndexSort : NSObject

-(void)sort:(NSMutableArray *)dataSource categoryNumber:(NSInteger)number;

@end
