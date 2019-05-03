//
//  main.m
//  Payments
//
//  Created by Dayson Dong on 2019-05-03.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "AmazonPaymentService.h"
#import "StripePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputHandler* inputHandler =  [[InputHandler alloc]init];
        PaymentGateway *payment = [[PaymentGateway alloc]init];
        NSInteger balance = arc4random_uniform(990) + 10;
        PaypalPaymentService* paypal = [PaypalPaymentService new];
        AmazonPaymentService* amazon = [AmazonPaymentService new];
        StripePaymentService* stripe = [StripePaymentService new];
        
        
        NSLog(@"Thank you for shopping at Acme.com. Your total is $%ld please select your payment method: 1: Paypal, 2: Strip, 3: Amazon",(long)balance);
        
        NSInteger userInput = [inputHandler parsedInput];
        switch (userInput) {
            case 1:
                payment.paymentDelegate = paypal;
                [payment processPaymentAmount:balance];
                break;
            case 2:
                payment.paymentDelegate = stripe;
                [payment processPaymentAmount:balance];
                break;
            case 3:
                payment.paymentDelegate = amazon;
                [payment processPaymentAmount:balance];
                break;
                
            default:
                NSLog(@"??");
                break;
        }

        
        
    }
    return 0;
}
