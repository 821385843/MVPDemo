//
//  UserService.h
//  MVPDemoForSelf
//
//  Created by Mr Xie on 2018/11/8.
//  Copyright © 2018 Mr Xie. All rights reserved.
//

/**
 *  Service 用来做数据获取工作等，发起网络请求，并且返回数据给Presenter，这个算是Model，但我准备用字典做业务交付
 */

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^SuccessHandler)(NSDictionary *dict);
typedef void(^FailHandler)(NSDictionary *dict);

@interface UserService : NSObject

- (void)getUserInfosSuccess:(SuccessHandler)success andFail:(FailHandler)fail;

@end

NS_ASSUME_NONNULL_END
