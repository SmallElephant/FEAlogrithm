//
//  Stack.m
//  AlogrithmAll
//
//  Created by keso on 15/6/6.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "Stack.h"

@implementation Stack

-(BOOL)isEmpty{
    return self.count==0;
}

-(NSInteger)size{
    return self.count;
}

-(void)push:(NSString *)value{
    Node  *oldFirst=self.first;
    self.first=[[Node alloc]init];
    self.first.value=value;
    self.first.next=oldFirst;
    self.count=self.count+1;
}

-(NSString *)pop{
    if (!self.first) {
        return [NSString stringWithFormat:@"-1"];
    }
    NSString *value=self.first.value;
    self.first=self.first.next;
    self.count=self.count-1;
    return value;
}

-(void)remove:(NSString *)value{
    if ([self.first.value isEqualToString:value]) {
        self.first=self.first.next;
        self.count=self.count-1;
    }else{
        Node *node=self.first;
        while (node.next) {
            if ([node.next.value isEqualToString:value]){
                if (node.next.next) {
                    Node *tempNode=node.next.next;
                    node.next=tempNode;
                }else{
                    node.next=NULL;
                }
                self.count=self.count-1;
                break;
            }else{
                node=node.next;
            }
           
        }
    }
}

@end
