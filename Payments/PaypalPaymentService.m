//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Dayson Dong on 2019-05-03.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void)processPaymentAmount:(NSInteger)balance{
    NSLog(@"Paypal processed amount $%ld",balance);
}
- (BOOL)canProcessPayment {
    if (arc4random_uniform(1)) {
        return YES;
    } else {
        return NO;
    }
}

@end
