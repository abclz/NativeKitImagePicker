//
//  ImagePicker.h
//  OC_FM
//
//  Created by eason on 2018/8/6.
//  Copyright © 2018年 普惠. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ImagePicker : NSObject

/**
 图片是否可编辑
 */
@property (nonatomic, assign) BOOL allowEditting;

/**
 打开的图片源
 */
@property (nonatomic, assign) UIImagePickerControllerSourceType sourceType;

/**
 实例对象
 */
+ (nonnull instancetype)imagePicker;

/**
 弹出相册
 */
- (BOOL)showPickerFrom:(nonnull UIViewController *)fromVC handler:(void (^ _Nonnull)(UIImage * _Nullable))handler;
@end
