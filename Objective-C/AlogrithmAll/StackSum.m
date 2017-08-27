//
//  StackSum.m
//  AlogrithmAll
//
//  Created by keso on 15/6/11.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "StackSum.h"
#import "Stack.h"

@implementation StackSum

//原文地址:http://www.cnblogs.com/xiaofeixiang
-(NSInteger)sum:(NSInteger)firstNumber secondNumber:(NSInteger)secondNumber{
    //第一个整数的栈
    Stack  *firstStack=[self getStackByNumber:firstNumber];
    //第二个整数的栈
    Stack  *secondStack=[self getStackByNumber:secondNumber];
    //结果栈
    Stack  *resultStack=[[Stack alloc]init];
    NSInteger  flag=0;//进位标记
    
    while (firstStack.count>0&&secondStack.count>0) {
        NSInteger  temp=[firstStack.pop integerValue]+[secondStack.pop integerValue]+flag;
        [resultStack push:[NSString stringWithFormat:@"%ld",temp%10]];
        flag=temp/10;
    }
    //第一个数字大于第二字数字的情况
    while (firstStack.count>0) {
        NSInteger  temp=[firstStack.pop integerValue]+flag;
        [resultStack push:[NSString stringWithFormat:@"%ld",temp%10]];
        flag=temp/10;
    }
    //第二个数字大于第一个数字
    while (secondStack.count>0) {
        NSInteger  temp=[secondStack.pop integerValue]+flag;
        [resultStack push:[NSString stringWithFormat:@"%ld",temp%10]];
        flag=temp/10;
    }
    //标记位有进位
    if (flag) {
        [resultStack push:[NSString stringWithFormat:@"%ld",flag]];
    }
    NSInteger  count=resultStack.count;
    NSString  *str=@"";
    //正序输出即为结果
    for (NSInteger i=0; i<count; i++) {
        str=[str stringByAppendingString:resultStack.pop];
   }
    return [str integerValue];
}

-(Stack *)getStackByNumber:(NSInteger)value{
    Stack  *stack=[[Stack alloc]init];
    NSString *stringValue=[NSString stringWithFormat:@"%ld",value];
    for (NSInteger i=0; i<[stringValue length]; i++) {
         [stack push:[NSString stringWithFormat:@"%@",[stringValue substringWithRange:NSMakeRange(i, 1)]]];
    }
    return stack;
}

@end
