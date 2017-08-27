//
//  LinearHashTable.m
//  AlogrithmAll
//
//  Created by keso on 15/7/27.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "LinearHashTable.h"

@implementation LinearHashTable

-(instancetype)initWithData:(NSInteger)capcity{
    self=[super init];
    if (self) {
        self.capticity=capcity;
        for (NSInteger i=0;i<capcity;i++) {
            [self.keys addObject:[NSNull null]];
            [self.values addObject:[NSNull null]];
        }
    }
    return self;
}

-(NSMutableArray *)keys{
    if (!_keys) {
        _keys=[[NSMutableArray alloc]initWithCapacity:self.capticity];
    }
    return _keys;
}

-(NSMutableArray *)values{
    if (!_values) {
        _values=[[NSMutableArray alloc]initWithCapacity:self.capticity];
    }
    return _values;
}

-(void)resize:(NSInteger)capcity{
    LinearHashTable  *table=[[LinearHashTable alloc]initWithData:capcity];
    for (NSInteger i=0;i<self.capticity; i++) {
        if (self.keys[i]!=[NSNull null]) {
            [table putData:self.keys[i] value:self.values[i]];
        }
    }
    self.keys=table.keys;
    self.values=table.values;
    self.capticity=table.capticity;
}

-(NSInteger)getHashCodeByKey:(NSString *)key{
    return [key integerValue]%self.capticity;
}

-(void)putData:(NSString *)key value:(NSString *)value{
    if (self.count>=self.capticity/2) {
        [self resize:self.capticity*2];
    }
    NSInteger i;
    for (i=[self getHashCodeByKey:key];self.keys[i]!=[NSNull null];i=(i+1)%self.capticity) {
        if ([self.keys[i] isEqualToString:key]) {
            self.values[i]=value;
            return;
        }
    }
    self.keys[i]=key;
    self.values[i]=value;
    self.count=self.count+1;
}

-(NSString *)getValue:(NSString *)key{
    for (NSInteger i=[self getHashCodeByKey:key]; self.keys[i]!=NULL; i=(i+1)%self.capticity) {
        if ([self.keys[i] isEqualToString:key]) {
            return self.values[i];
        }
    }
    return NULL;
}

@end
