//
//  PaymentGateway.h
//  Payments
//
//  Created by Dayson Dong on 2019-05-03.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class PaymentGateway;
@protocol PaymentDelegate <NSObject>

-(void)processPaymentAmount:(NSInteger) balance;
-(BOOL)canProcessPayment;

@end

@interface PaymentGateway : NSObject

@property (nonatomic,weak) id<PaymentDelegate> paymentDelegate;

-(void)processPaymentAmount:(NSInteger) balance;

@end

NS_ASSUME_NONNULL_END
