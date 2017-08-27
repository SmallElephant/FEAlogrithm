//
//  StackOperation.m
//  AlogrithmAll
//
//  Created by keso on 15/5/30.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "StackOperation.h"

@implementation StackOperation

-(NSInteger)operationExpression:(NSString *)expression{

    NSMutableArray  *operationArr=[[NSMutableArray alloc]initWithCapacity:1];
    NSMutableArray  *valArr=[[NSMutableArray alloc]initWithCapacity:1];
    for (NSInteger i=0; i<expression.length; i++) {
        NSString  *currentStr=[NSString stringWithFormat:@"%c",[expression characterAtIndex:i]];
        if([currentStr isEqualToString:@"("]);
        else if([currentStr isEqualToString:@"+"]){
            [operationArr addObject:currentStr];
        }else if([currentStr isEqualToString:@"-"]){
            [operationArr addObject:currentStr];
        }else if([currentStr isEqualToString:@"*"]){
            [operationArr addObject:currentStr];
        }else if([currentStr isEqualToString:@")"]){
            
            NSInteger  lastValue=[[valArr objectAtIndex:valArr.count-1] integerValue];
            NSInteger  secondValue=[[valArr objectAtIndex:valArr.count-2] integerValue];
            
            [valArr removeObjectAtIndex:valArr.count-1];
            [valArr removeObjectAtIndex:valArr.count-1];
            NSString   *lastOperation=[operationArr objectAtIndex:operationArr.count-1];
            [operationArr removeObjectAtIndex:operationArr.count-1];
            
            
            
            NSInteger newValue=0;
            if([lastOperation isEqualToString:@"+"]) newValue=secondValue+lastValue;
            else if([lastOperation isEqualToString:@"-"]) newValue=secondValue-lastValue;
            else if([lastOperation isEqualToString:@"*"]) newValue=secondValue*lastValue;
            else if([lastOperation isEqualToString:@"/"]) newValue=secondValue/lastValue;
            
            [valArr addObject:[NSNumber numberWithLong:newValue]];
            
        }else{
            [valArr addObject:currentStr];
        }
    }
    return [[valArr objectAtIndex:0] integerValue];
}

@end
