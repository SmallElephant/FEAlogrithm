//
//  NSString+Reverse.m
//  AlogrithmAll
//
//  Created by keso on 16/2/3.
//  Copyright © 2016年 keso. All rights reserved.
//

#import "NSString+Reverse.h"

@implementation NSString (Reverse)

-(NSString *)reverse{
    NSString  *result=@"";
    for (NSInteger i=self.length-1; i>=0; i--) {
        char  temp=[self characterAtIndex:i];
        result=[result stringByAppendingString:[NSString stringWithFormat:@"%c",temp]];
    }
    return result;
}

- (NSString *)stringByReversed
{
    NSLog(@"stringByReversed--%@",self);
    NSString  *result=@"";
    for (NSInteger i=self.length-1; i>=0; i--) {
        NSLog(@"%@",[self substringWithRange:NSMakeRange(i, 1)]);
          result=[result stringByAppendingString:[self substringWithRange:NSMakeRange(i, 1)]];
    }
    return result;
}

//- (NSString *)descriptionWithLocale:(id)locale
//{
//    NSMutableString *strM = [NSMutableString string];
//    [strM appendString:@"(n"];
//    
//    for (id obj in self) {
//        [strM appendFormat:@"t%@,n", obj];
//    }
//    [strM appendString:@")"];
//    
//    return strM;
//}

@end
