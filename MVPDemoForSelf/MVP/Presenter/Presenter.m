//
//  Presenter.m
//  MVPDemoForSelf
//
//  Created by Mr Xie on 2018/11/8.
//  Copyright © 2018 Mr Xie. All rights reserved.
//

#import "Presenter.h"
#import "UserService.h"

@interface Presenter()

@property (nonatomic,strong) UserService *userService;

@property (nonatomic, weak) id<UserViewProtocol> attachView;

@end

@implementation Presenter

- (void)attachView:(id<UserViewProtocol>)view {
    self.attachView = view;
    self.userService  = [[UserService alloc] init];
}

- (void)fetchData {
    [self getUserDatas];
}

- (void)getUserDatas {
    [self.attachView showIndicator];
    [_userService getUserInfosSuccess:^(NSDictionary *dic) {
        [self.attachView hideIndicator];
        NSArray *userArr = [dic valueForKey:@"data"];
        
        if ([self processOriginDataToUIFriendlyData:userArr].count == 0) {
            [self.attachView showEmptyView];
        }
        [self.attachView userViewDataSource:[self processOriginDataToUIFriendlyData:userArr]];
    } andFail:^(NSDictionary *dic) {
        
    }];
}

/**
 如果数据比较复杂，或者UI渲染的数据只是其中很少一部分，将原数据处理，输出成UI渲染的数据。（题外话：这里其实还可以使用协议，提供不同的数据格式输出。）

 @param originData 原始数据
 @return 将原始数据转换为UI需要数据
 */
- (NSArray<UserModel *> *)processOriginDataToUIFriendlyData:(NSArray *)originData {
    NSMutableArray<UserModel *> *friendlyUIData = [NSMutableArray array];
    for (NSDictionary *dic in originData) {
        if ([[dic valueForKey:@"gender"] isEqualToString:@"male"]) {
            UserModel *model = [UserModel userWithDict:dic];
            [friendlyUIData addObject:model];
        }
    }
    return friendlyUIData;
}

@end
