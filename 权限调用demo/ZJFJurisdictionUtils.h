//
//  ZJFJurisdictionUtils.h
//  权限调用demo
//
//  Created by 小哲的dell on 2019/7/22.
//  Copyright © 2019 小哲的dell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZJFJurisdictionUtils : NSObject

/// 获取iPhone名称
+ (NSString *)getiPhoneName;
///获取设备版本号
+ (NSString *)getDeviceName;
/// 当前系统版本号
+ (NSString *)getSystemVersion;
///获取屏幕宽度
+ (CGFloat)getDeviceScreenWidth;
///获取屏幕高度
+ (CGFloat)getDeviceScreenHeight;
/////获取电池电量
//+ (CGFloat)getBatteryLevel;
/////获取当前设备IP
//+ (NSString *)getDeviceIPAdress;
/////获取总内存大小
//+ (long long)getTotalMemorySize;
/////获取当前可用内存
//+ (long long)getAvailableMemorySize;
///获取设备当前语言
+ (NSString *)getDeviceLanguage;
///获取当前Wi-Fi开关是否打开
+ (BOOL)getWiFiEnabled;
///获取当前GPS开关是否打开
+ (BOOL)getGPSEnabled;
///获取当前设备缩放因子
+ (int)getPixelScale;
///获取apps配置文件中是否允许使用相册权限
+ (BOOL)getPhotoLibrary;
///获取apps配置文件中是否允许使用摄像头权限
+ (BOOL)getCamera;
///获取apps配置文件中是否允许使用定位权限
+ (BOOL)getLocation;
///获取apps配置文件中是否允许使用麦克风权限
+ (BOOL)getMicrophone;
///检查通知权限
- (void)checkCurrentNotificationStatus;
///申请通知权限
- (void)requestNotification;
@end

NS_ASSUME_NONNULL_END
