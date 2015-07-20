//
//  ViewController.m
//  Camera_app
//
//  Created by optimusmac-12 on 16/07/15.
//  Copyright (c) 2015 mdtaha.optimus. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        
        UIAlertView *msg = [[UIAlertView alloc] initWithTitle:@"Attention"
                                                              message:@"Camera Not Available"
                                                             delegate:nil
                                                    cancelButtonTitle:@"OK"
                                                    otherButtonTitles: nil];
        
        [msg show];
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)gallery:(id)sender
{
    UIImagePickerController *gallery = [[UIImagePickerController alloc] init];
    gallery.delegate = self;
    gallery.allowsEditing = YES;
    gallery.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:gallery animated:YES completion:NULL];

}

- (IBAction)takephoto:(id)sender
{
    UIImagePickerController *pic=[[UIImagePickerController alloc]init];
    pic.delegate=self;
    pic.allowsEditing=YES;
    pic.sourceType=UIImagePickerControllerSourceTypeCamera;
    [self presentViewController:pic animated:YES completion:NULL];
        
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage *Imageselected = info[UIImagePickerControllerEditedImage];
    self.picture.image = Imageselected;
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}

@end

