//
//  ViewController.m
//  mcrypt_c
//
//  Created by SHINOHARAYUKI on 2014/06/21.
//  Copyright (c) 2014年 SHINOHARAYUKI. All rights reserved.
//

#import "ViewController.h"
#import "NSDataEx.h"

@interface ViewController ()
            

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *key = @"d41d8cd98f00b204e9800998ecf8427e";
    NSString *plaintext = @"iphone";
    
    NSString *cipher = [plaintext AES256EncryptWithKey: key];
    NSLog(@"encode: %@", cipher);
    NSString *dec = [cipher AES256DecryptWithKey: key];
    NSLog(@"encode: %@", dec);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
