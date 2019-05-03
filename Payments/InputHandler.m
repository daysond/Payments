//
//  InputHandler.m
//  Payments
//
//  Created by Dayson Dong on 2019-05-03.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

- (NSInteger)parsedInput{
    
    char userInput[255];
    fgets(userInput, 255, stdin);
    NSString* input = [[NSString stringWithUTF8String:userInput] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return [input integerValue];
    
    
    
    return 0;
}

@end
