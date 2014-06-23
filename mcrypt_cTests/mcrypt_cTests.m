//
//  mcrypt_cTests.m
//  mcrypt_cTests
//
//  Created by SHINOFARA on 2014/06/21.
//  Copyright (c) 2014年 SHINOFARA. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSDataEx.h"
#import "Base64.h"

@interface mcrypt_cTests : XCTestCase
@property (nonatomic, retain) NSString *key;
@property (nonatomic, retain) NSString *plaintext;
@end

@implementation mcrypt_cTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    _key = @"d41d8cd98f00b204e9800998ecf8427epaaaaass";
    _plaintext = @"アメリカ・カンザス州に暮らす少女ドロシー（Dorothy）は竜巻に家ごと巻き込まれて、飼い犬のトト（Toto）と共に不思議な「オズの国」（Land of Oz）へと飛ばされてしまう。途中で脳の無いカカシ・心の無いブリキの木こり・臆病なライオンと出会い、それぞれの願いを叶えてもらうため「エメラルドの都」（Emerald City）にいるという大魔法使いの「オズ」（Wizard of Oz）に会いに行く。";
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    NSString *cipher = [_plaintext AES256EncryptWithKey: _key];
    XCTAssertNotEqualObjects(cipher, _plaintext, @"暗号化後は、プレーンテキストとは違う値になる");
    
    NSString *dec = [cipher AES256DecryptWithKey: _key];
    XCTAssertEqualObjects(dec, _plaintext, @"複合化後は、プレーンテキストと同じになる");
}

- (void)testDecryptWithOtherKeyExample {
    NSString *cipher = [_plaintext AES256EncryptWithKey: _key];
    NSString *dec = [cipher AES256DecryptWithKey: @"otherkey"];
    XCTAssertNotEqualObjects(dec, _plaintext, @"別keyで複合すると空白になる");
}

@end