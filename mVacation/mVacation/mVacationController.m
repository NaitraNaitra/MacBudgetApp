//
//  mVacationController.m
//  mVacation
//
//  Created by Maxi on 09/07/2019.
//  Copyright © 2019 Naitra. All rights reserved.
//

#import "mVacationController.h"
#import "Destination.h"

@implementation mVacationController

- (IBAction)spendDollars:(id)sender {
    NSLog(@"Sending a %.2f cash transaction",[_transactionField.stringValue floatValue]);
    [europe spendCash:[_transactionField.stringValue doubleValue]];
    [_balanceField setStringValue:[[NSString alloc]initWithFormat:@"%.2f",[europe leftToSpend]]];
}

- (IBAction)chargeCreditCard:(id)sender {
    NSLog(@"Sending a %.2f credit card transaction",[_transactionField.stringValue floatValue]);
    [europe chargeCreditCard:[_transactionField.stringValue floatValue]];
    [_balanceField setStringValue:[[NSString alloc]initWithFormat:@"%.2f",[europe leftToSpend]]];
}
@end
