//
//  UserService.m
//  MVPDemoForSelf
//
//  Created by Mr Xie on 2018/11/8.
//  Copyright © 2018 Mr Xie. All rights reserved.
//

#import "UserService.h"

@implementation UserService

- (void)getUserInfosSuccess:(SuccessHandler)success andFail:(FailHandler)fail {
    NSArray *result = @[@{@"name":@"Tom",
                          @"age":@25,
                          @"addr":@"GuangZhou",
                          @"gender":@"male",
                          },
                        @{@"name":@"Jerry",
                          @"age":@22,
                          @"addr":@"Hangzhou",
                          @"gender":@"male",
                          },
                        @{@"name":@"Lucy",
                          @"age":@25,
                          @"addr":@"Didu",
                          @"gender":@"female",
                          }];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        success(@{@"data":result});
    });
}

@end
