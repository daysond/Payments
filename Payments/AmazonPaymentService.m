//
//  AmazonPaymentService.m
//  Payments
//
//  Created by Dayson Dong on 2019-05-03.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (void)processPaymentAmount:(NSInteger)balance{
    NSLog(@"Amazon processed amount $%ld",balance);
}
- (BOOL)canProcessPayment {
    if (arc4random_uniform(2)) {
        return YES;
    } else {
        return NO;
    }
}
@end
