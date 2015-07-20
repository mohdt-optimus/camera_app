//
//  ViewController.h
//  Camera_app
//
//  Created by optimusmac-12 on 16/07/15.
//  Copyright (c) 2015 mdtaha.optimus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *picture;

- (IBAction)gallery:(id)sender;

- (IBAction)takephoto:(id)sender;

@end

