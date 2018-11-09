//
//  UserViewProtocol.h
//  MVPDemoForSelf
//
//  Created by 谢伟 on 2018/11/8.
//  Copyright © 2018 谢伟. All rights reserved.
//
/**
 * UserViewProtocol 协议定义了一下方法，这些方法其实就是presenter对view层发送的命令
 */
#import "UserModel.h"

@protocol UserViewProtocol <NSObject>

- (void)userViewDataSource:(NSArray<UserModel *> *)data;

- (void)showIndicator;

- (void)hideIndicator;

- (void)showEmptyView;

@end
