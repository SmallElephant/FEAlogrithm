//
//  Search.h
//  AlogrithmAll
//
//  Created by keso on 15/7/6.
//  Copyright (c) 2015年 keso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Search : NSObject

-(NSInteger)duplicate:(NSMutableArray *)array;

-(NSMutableArray *)duplicateSort:(NSMutableArray *)array;

-(NSInteger)indexOf:(NSMutableArray *)arr element:(NSString *)item;

@end
