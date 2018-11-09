//
//  UserModel.m
//  MVPDemoForSelf
//
//  Created by 谢伟 on 2018/11/9.
//  Copyright © 2018 谢伟. All rights reserved.
//

#import "UserModel.h"

@implementation UserModel

- (instancetype)initWithDict:(NSDictionary *)dict {
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (instancetype)userWithDict:(NSDictionary *)dict {
    return [[self alloc] initWithDict:dict];
}



@end
