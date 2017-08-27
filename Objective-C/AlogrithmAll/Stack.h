//
//  Stack.h
//  AlogrithmAll
//
//  Created by keso on 15/6/6.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

 enum ConnnectionState{
    Connected,
    Initing,
    GoodMan,
};
typedef enum ConnnectionState ConnnectionState;
@interface Stack : NSObject
//栈顶的元素
@property  (strong,nonatomic) Node  *first;

@property  (assign,nonatomic) NSInteger  count;

-(BOOL)isEmpty;

-(NSInteger)size;

-(void)push:(NSString *)value;

-(NSString *)pop;

-(void)remove:(NSString *)value;

@end
