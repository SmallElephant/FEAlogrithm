//
//  Search.m
//  AlogrithmAll
//
//  Created by keso on 15/7/6.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "Search.h"
/**
 查询数组中重复的数字
 */

@implementation Search


//-(NSInteger)duplicate:(NSMutableArray *)array{
//    for (NSInteger i= 0 ; i<[array count]; i++) {
//        NSInteger index =[array[i] integerValue];
//        if (index >= [array count]) {ki,k   /.m m,l;''j im9l./
//
//            index -= [array count];
//        }
//        if ([array[index] integerValue] >= [array count]) {
//            return index;
//        }
//        array[index]=[NSNumber numberWithInteger:[array[index] integerValue] + [array count] ];
//    }
//    return - 1 ;
//}

//原文地址:http://www.cnblogs.com/xiaofeixiang
-(NSInteger)duplicate:(NSMutableArray *)array{
    for (NSInteger i=0;i<[array count];i++) {
        while (i!=[array[i] integerValue]) {
            if ([array[[array[i] integerValue]] isEqualTo:array[i]]) {
                return [array[i] integerValue];
            }
            NSInteger  temp=[array[[array[i] integerValue]] integerValue];
            array[[array[i] integerValue]]=array[i];
            array[i]=[NSNumber numberWithInteger:temp];
        }
    }
    return -1;
}

//-(NSInteger)duplicate:(NSMutableArray *)array{
//    
//    for(int i = 0 ; i < [array count];i++)
//    {
//        if(i == [array[i] integerValue]) 	//当前值和位置恰好对应
//        {
//            ++i;
//            continue;
//        }
//        if(array[i] == array[[array[i] integerValue]])	//某个值不在其对应位置，但与对应位置值相同，重复
//        {
//            return [array[i] integerValue];
//        }
//        else	//将当前值交换到其对应位置，注意交换后i位置不能动
//        {
//            NSInteger temp = [array[[array[i] integerValue]] integerValue];
//            array[[array[i] integerValue]] = array[i];
//            array[i] =[NSNumber numberWithInteger:temp];
//        }
//    }
//    
//    return -1;    //没有重复值
//}


-(NSMutableArray *)duplicateSort:(NSMutableArray *)array{
    NSMutableArray  *result=[[NSMutableArray  alloc]initWithCapacity:1];
    NSMutableArray  *temp=[[NSMutableArray  alloc]initWithCapacity:1];
    for (NSInteger  i=0; i<[array count]; i++) {
        if (![temp containsObject:[array objectAtIndex:i]]) {
            [temp  addObject:array[i]];
        }else{
            [result addObject:array[i]];
        }
    }
    return result;
}

-(NSInteger)indexOf:(NSMutableArray *)arr  element:(NSString *)item{
    if ([arr containsObject:item]) {
        return [arr indexOfObject:item];
    }else{
        return -1;
    }
}


@end
