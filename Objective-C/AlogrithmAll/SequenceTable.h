//
//  SequenceTable.h
//  AlogrithmAll
//
//  Created by keso on 15/7/5.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseSymbolTable.h"

@interface SequenceTable : NSObject

@property  (strong,nonatomic) BaseNode  *first;

-(void)put:(NSString *)key  value:(NSString *)value;

-(NSString *)get:(NSString *)key;

@end
