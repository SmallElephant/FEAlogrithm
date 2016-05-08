//
//  Recursive.h
//  AlogrithmAll
//
//  Created by keso on 15/5/27.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Recursive : NSObject

-(NSInteger)simpleRecursive:(NSInteger)count;

-(void)reverseNumber:(NSInteger)number;
-(NSInteger)power:(NSInteger)number  count:(NSInteger)count;

-(void)printOutNumber:(NSInteger)number;

-(void)allRange:(NSMutableArray *)arr  start:(NSInteger)start;

-(NSInteger)binarySearch:(NSMutableArray *)array number:(NSInteger)number start:(NSInteger)start  endIndex:(NSInteger)end;

-(void)swap1:(NSInteger)a  secondNumber:(NSInteger)b;

-(void)swap2:(NSInteger)a  secondNumber:(NSInteger)b;

-(void)swap3:(NSInteger)a  secondNumber:(NSInteger)b;

@end
