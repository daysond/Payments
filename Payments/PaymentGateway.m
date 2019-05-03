//
//  PaymentGateway.m
//  Payments
//
//  Created by Dayson Dong on 2019-05-03.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void)processPaymentAmount:(NSInteger)balance {
    
    if([self.paymentDelegate canProcessPayment]){
        [self.paymentDelegate processPaymentAmount:balance];
    } else {
        NSLog(@"Payment was not processed.");
    }


    
}


@end
