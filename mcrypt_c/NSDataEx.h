#import <Foundation/Foundation.h>

@class NSString;

@interface NSString (Additions)

- (NSString *)AES256EncryptWithKey:(NSString *)key;
- (NSString *)AES256DecryptWithKey:(NSString *)key;

@end