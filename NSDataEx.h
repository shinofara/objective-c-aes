#import <Foundation/Foundation.h>

@class NSString;

@interface NSString (Additions)
/*
 - (NSData *)AES256EncryptWithKey:(NSString *)key;
 - (NSData *)AES256DecryptWithKey:(NSString *)key;
 */

- (NSString *)AES256EncryptWithKey:(NSString *)key;
- (NSString *)AES256DecryptWithKey:(NSString *)key;

@end