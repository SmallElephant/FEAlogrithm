//
//  MaxCommoDivisor.m
//  AlogrithmAll
//
//  Created by keso on 15/5/27.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "MaxCommoDivisor.h"

@implementation MaxCommoDivisor

-(NSInteger)maxDivisor:(NSInteger)a secondNumber:(NSInteger)b{
    if (a<b) {
        a=a+b;
        b=a-b;
        a=a-b;
    }
    while (b!=0) {
        NSInteger  mod=a%b;
        a=b;
        b=mod;
    }
    return a;
}

-(NSInteger)maxmodRecursive:(NSInteger)a secondNumber:(NSInteger)b{
    if (a<b) {
        a=a+b;
        b=a-b;
        a=a-b;
    }
    if (b==0) {
        return a;
    }else{
        return [self maxmodRecursive:b secondNumber:a%b];
    }
}

-(NSInteger)maxRecursive:(NSInteger)a secondNumber:(NSInteger)b{
    if (a<b) {
        a=a+b;
        b=a-b;
        a=a-b;
    }
    if (b==0) {
        return a;
    }else{
        return [self maxRecursive:b secondNumber:a-b];
    }
}

-(NSInteger)maxLogic:(NSInteger)a secondNumber:(NSInteger)b{
    if (a<b) {
        a=a+b;
        b=a-b;
        a=a-b;
    }
    if (b==0) {
        return a;
    }else{
        //a是偶数
        if ((a&1)==0) {
            //b是偶数
            if ((b&1)==0) {
                return [self maxLogic:a>>1 secondNumber:b>>1]<<1;
            }else{//b是奇数
                return [self maxLogic:a>>1 secondNumber:b];
            }
        }else{//a是奇数
            //b是偶数
            if ((b&1)==0) {
                return [self maxLogic:a secondNumber:b>>1];
            }else{//b是奇数
                return [self maxLogic:b secondNumber:a-b];
            }
        }
    }
    return 0;
}

@end
