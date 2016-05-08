//
//  Recursive.m
//  AlogrithmAll
//
//  Created by keso on 15/5/27.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "Recursive.h"

@implementation Recursive


-(NSInteger)simpleRecursive:(NSInteger)count{
    if (count==1) {
        return 0;
    }else if(count==2){
        return 1;
    }
    return [self simpleRecursive:count-1]+[self simpleRecursive:count-2];
}
-(NSInteger)power:(NSInteger)number  count:(NSInteger)count{
    if (count==0) {
        return 1;
    }
    if (count==1) {
        return number;
    }
    if (count%2==0) {
        return [self power:number*number count:count/2];
    }else{
        return [self power:number*number count:count/2]*number;
    }
}

-(void)printOutNumber:(NSInteger)number{
    //取整,不断的递归取整，之后取余
    if (number>10) {
        [self printOutNumber:number/10];
    }
    NSLog(@"数值%ld",number%10);
}

-(void)reverseNumber:(NSInteger)number{
    if(number>10) {
        NSLog(@"FlyElephant:%ld",number%10);
        [self reverseNumber:number/10];
    }else{
        NSLog(@"FlyElephant%ld",number%10);
    }
}

-(void)reverseNumber2:(NSInteger)number{
    while (number!=0) {
        NSLog(@"当前的数值:%ld",number%10);
        number=number/10;
    }
}

//http://www.cnblogs.com/xiaofeixiang
-(void)allRange:(NSMutableArray *)arr  start:(NSInteger)index{
    if(index==arr.count-1)
    {
        NSString  *result=@"";
        for (NSInteger i=0; i<arr.count; i++) {
            result=[result stringByAppendingString:[arr objectAtIndex:i]];
        }
        NSLog(@"排列:%@",result);
    }
    else
    {
        for(NSInteger i=index;i<arr.count;i++)
        {	//从下标为index的数开始，分别与它后面的数字交换
            NSString *temp=arr[index];
            arr[index]=arr[i];
            arr[i]=temp;
            
            [self allRange:arr start:index+1];
            
            NSString *tempNext=arr[index];
            arr[index]=arr[i];
            arr[i]=tempNext;
        }
    }
}

-(NSInteger)binarySearch:(NSMutableArray *)array number:(NSInteger)number start:(NSInteger)start  endIndex:(NSInteger)end{
    while (start<=end) {
        NSInteger  middle=(start+end)/2;
        if ([[array objectAtIndex:middle] integerValue]>number) {
            end=middle-1;
        }else if ([[array objectAtIndex:middle] integerValue]<number){
            start=middle+1;
        }else{
            return middle;
        }
    }
    return -1;
}



-(void)swap1:(NSInteger)a  secondNumber:(NSInteger)b{
    a=a+b;
    b=a-b;
    a=a-b;
    NSLog(@"交换之后的两个数字为:%ld--%ld",(long)a,(long)b);
}


-(void)swap2:(NSInteger)a  secondNumber:(NSInteger)b{
    a=a*b;
    b=a/b;
    a=a/b;
    NSLog(@"交换之后的两个数字为:%ld--%ld",(long)a,(long)b);
}


-(void)swap3:(NSInteger)a secondNumber:(NSInteger)b{
    a=a^b;
    b=a^b;
    a=a^b;
    
        NSLog(@"交换之后的两个数字为:%ld--%ld",(long)a,(long)b);
}

@end
