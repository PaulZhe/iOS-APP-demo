//
//  ViewController.m
//  权限调用demo
//
//  Created by 小哲的dell on 2019/7/22.
//  Copyright © 2019 小哲的dell. All rights reserved.
//

#import "ViewController.h"
#import "ZJFJurisdictionUtils.h"
#import <CoreBluetooth/CoreBluetooth.h>

@interface ViewController () <CBCentralManagerDelegate>
@property (nonatomic, strong) CBCentralManager *bluetoothManager;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //通知权限
    ZJFJurisdictionUtils *utils = [ZJFJurisdictionUtils new];
    [utils requestNotification];
    [utils checkCurrentNotificationStatus];
    
    //获取apps配置文件中是否允许使用相册权限
    NSLog(@"PhotoLibraryEnabled:%@", [ZJFJurisdictionUtils getPhotoLibrary] ? @"YES" : @"NO");
    //获取apps配置文件中是否允许使用摄像头权限
    NSLog(@"CameraEnabled:%@", [ZJFJurisdictionUtils getCamera] ? @"YES" : @"NO");
    //获取apps配置文件中是否允许使用定位权限
    NSLog(@"LocationEnabled:%@", [ZJFJurisdictionUtils getLocation] ? @"YES" : @"NO");
    //获取apps配置文件中是否允许使用麦克风权限
    NSLog(@"MicrophoneEnabled:%@", [ZJFJurisdictionUtils getMicrophone] ? @"YES" : @"NO");
    //获取iPhone名称
    NSLog(@"iPhoneName:%@", [ZJFJurisdictionUtils getiPhoneName]);
    //获取设备版本号
    NSLog(@"deviceName:%@", [ZJFJurisdictionUtils getDeviceName]);
    //获取当前系统版本号
    NSLog(@"systemVersionName:%@", [ZJFJurisdictionUtils getSystemVersion]);
    //获取屏幕宽度
    NSLog(@"deviceScreenWidth:%f", [ZJFJurisdictionUtils getDeviceScreenWidth]);
    //获取屏幕高度
    NSLog(@"deviceScreenHeight:%f", [ZJFJurisdictionUtils getDeviceScreenHeight]);

    //获取设备当前语言
    NSLog(@"deviceLanguage:%@", [ZJFJurisdictionUtils getDeviceLanguage]);
    //获取当前Wi-Fi设备是否打开
    NSLog(@"WiFiEnabled:%@", [ZJFJurisdictionUtils getWiFiEnabled] ? @"YES" : @"NO");
    //获取当前GPS设备是否打开
    NSLog(@"GPSEnabled:%@", [ZJFJurisdictionUtils getGPSEnabled] ? @"YES" : @"NO");
    //初始化蓝牙控制器
    _bluetoothManager = [[CBCentralManager alloc] initWithDelegate:self queue:nil];
    //获取当前设备的缩放因子
    NSLog(@"PixelScale:%d", [ZJFJurisdictionUtils getPixelScale]);
    
}

//- (CBCentralManager *)bluetoothManager {
//    if (_bluetoothManager == nil) {
//        _bluetoothManager = [[CBCentralManager alloc] initWithDelegate:self queue:nil];
//    }
//    return _bluetoothManager;
//}

//第一次打开调用这个函数
- (void)centralManagerDidUpdateState:(nonnull CBCentralManager *)central {
    if (_bluetoothManager.state == CBManagerStatePoweredOn) {
        NSLog(@"蓝牙开着");
    } else if (_bluetoothManager.state == CBManagerStatePoweredOff) {
        NSLog(@"蓝牙关着");
    } else if (_bluetoothManager.state == CBManagerStateUnknown) {
        NSLog(@"蓝牙状态未知");
    } else if (_bluetoothManager.state == CBManagerStateResetting) {
        NSLog(@"蓝牙正在重置状态");
    } else if (_bluetoothManager.state == CBManagerStateUnauthorized) {
        NSLog(@"设备未授权状态");
    } else {
        NSLog(@"设备不支持蓝牙");
    }
}


@end
