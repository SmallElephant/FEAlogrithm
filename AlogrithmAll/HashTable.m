//
//  HashTable.m
//  AlogrithmAll
//
//  Created by keso on 15/7/26.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import "HashTable.h"

@implementation HashTable

-(instancetype)initWithData:(NSInteger)linkCount{
    self=[super init];
    if (self) {
        self.linkCount=linkCount;
        SequenceTable *sequenceTable;
        for (NSInteger i=0; i<linkCount; i++) {
            sequenceTable=[[SequenceTable alloc]init];
            [self.sequenceTableArr  addObject:sequenceTable];
        }
    }
    return self;
}


-(NSMutableArray *)sequenceTableArr{
    if (!_sequenceTableArr) {
        _sequenceTableArr=[[NSMutableArray alloc]initWithCapacity:1];
    }
    return _sequenceTableArr;
}

-(NSInteger)getHashCodeByKey:(NSString *)key{
    NSInteger  value=[key integerValue];
    return value%self.linkCount;
}

-(void)putData:(NSString *)key value:(NSString *)value{
    NSInteger index=[self getHashCodeByKey:key];
    SequenceTable  *table =self.sequenceTableArr[index];
    [table put:key value:value];
}

-(NSString *)getValue:(NSString *)key{
    NSInteger index=[self getHashCodeByKey:key];
    SequenceTable  *table =self.sequenceTableArr[index];
    return [table get:key];
}
@end
