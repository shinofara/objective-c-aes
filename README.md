AES256 encrypt&decrypt
==========================

AES暗号

# Usage


```
#import "NSDataEx.h"

NSString *key = @"d41d8cd98f00b204e9800998ecf8427e";
NSString *plaintext = @"iphone";

//encrypt > base64enc
NSString *cipher = [plaintext AES256EncryptWithKey: key];

NSLog(@"encode: %@", cipher);

//base64dec -> decrypt
NSString *dec = [cipher AES256DecryptWithKey: key];
NSLog(@"encode: %@", dec);
```

a
