//
//  Queue.m
//  AlogrithmAll
//
//  Created by keso on 15/6/8.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "Queue.h"

@implementation Queue

-(BOOL)isEmpty{
    return self.count==0;
}


-(NSInteger)size{
    return self.count;
}
-(void)enqueue:(NSString *)value{
    Node  *oldLast=self.last;
    self.last=[[Node alloc]init];
    self.last.value=value;
    self.last.next=NULL;
    oldLast.next=self.last;
    if ([self isEmpty]) {
        self.first=self.last;
    }else{
        oldLast.next=self.last;
    }
    self.count=self.count+1;
}

-(NSString *)dequeue{
    if ([self isEmpty]) {
        return [NSString stringWithFormat:@"-1"];
    }
    NSString  *result=self.first.value;
    self.first=self.first.next;
    self.count=self.count-1;
    return result;
}

-(void)remove:(NSString *)value{
    //判断是不是头部节点
    if ([self.first.value isEqualToString:value]) {
        self.first=self.first.next;
        self.count=self.count-1;
    }else{
        Node  *node=self.first;
        while (node!=NULL) {
            if ([node.next.value isEqualToString:value]) {
                node.next=node.next.next;
                self.count=self.count-1;
                break;
            }
            node=node.next;
        }
    }
}
@end
