//
//  UserModel.h
//  MVPDemoForSelf
//
//  Created by 谢伟 on 2018/11/9.
//  Copyright © 2018 谢伟. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UserModel : NSObject

@property (nonatomic, strong) NSString *name;

@property (nonatomic, strong) NSNumber *age;

@property (nonatomic, strong) NSString *addr;

@property (nonatomic, strong) NSString *gender;

- (instancetype)initWithDict:(NSDictionary *)dict;

+ (instancetype)userWithDict:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END
