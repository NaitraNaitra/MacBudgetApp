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
@synthesize transactionField;
@synthesize balanceField;

- (void)awakeFromNib
{
    [super awakeFromNib];
    NSString* europeText = [[NSString alloc] initWithFormat: @"%@", @"Europe" ];
    europe = [[Destination alloc] initWithCountry:europeText andBudget:10000.00 withExchangeRate:1.25];
    [balanceField setStringValue:[[NSString alloc] initWithFormat:@"%.2f", [europe leftToSpend]]];
}

- (IBAction)spendDollars:(id)sender {
    NSLog( @"Sending a %.2f cash transaction", [transactionField.stringValue floatValue] );
    [europe spendCash:[transactionField.stringValue doubleValue]];
    [balanceField setStringValue:[[NSString alloc] initWithFormat:@"%.2f", [europe leftToSpend]]];
}

- (IBAction)chargeCreditCard:(id)sender {
    NSLog( @"Sending a %.2f credit card transaction", [transactionField.stringValue floatValue] );
    [europe chargeCreditCard:[transactionField.stringValue doubleValue]];
    [balanceField setStringValue:[[NSString alloc] initWithFormat:@"%.2f", [europe leftToSpend]]];
}
@end
