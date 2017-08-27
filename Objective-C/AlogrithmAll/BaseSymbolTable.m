//
//  SymbolTable.m
//  AlogrithmAll
//
//  Created by keso on 15/7/5.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "BaseSymbolTable.h"

@implementation BaseNode

-(void)setUpData:(NSString *)key value:(NSString *)value next:(BaseNode *)next{
    self.key=key;
    self.value=value;
    self.next=next;
}

@end

@implementation BaseSymbolTable

-(void)put:(NSString *)key value:(NSString *)value{
   
}



-(void)deleteKey:(NSString *)key{
    
}


@end
