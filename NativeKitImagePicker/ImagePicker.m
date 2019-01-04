//
//  ImagePicker.m
//  OC_FM
//
//  Created by eason on 2018/8/6.
//  Copyright © 2018年 普惠. All rights reserved.
//

#import "ImagePicker.h"

@interface ImagePicker()<UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@property (nonatomic, copy, nullable) void (^handler)(UIImage * _Nullable);
@end

@implementation ImagePicker

+ (nonnull instancetype)imagePicker {
    return [[ImagePicker alloc] init];
}

- (BOOL)showPickerFrom:(UIViewController *)fromVC handler:(void (^)(UIImage * _Nullable))handler {
    if ([UIImagePickerController isSourceTypeAvailable:self.sourceType] == NO) {
        return NO;
    }
    self.handler = handler;
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.sourceType = self.sourceType;
    picker.allowsEditing = self.allowEditting;
    picker.delegate = self;
    [fromVC presentViewController:picker animated:YES completion:nil];
    return YES;
}

#pragma mark - UIImagePickerControllerDelegate
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    UIImage *img = info[self.allowEditting ? UIImagePickerControllerEditedImage : UIImagePickerControllerOriginalImage];
    __weak typeof(self) wSelf = self;
    [picker dismissViewControllerAnimated:YES completion:^{
        wSelf.handler ? wSelf.handler(img) : nil;
    }];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    __weak typeof(self) wSelf = self;
    [picker dismissViewControllerAnimated:YES completion:^{
        wSelf.handler ? wSelf.handler(nil) : nil;
    }];
}
@end
