//
//  mVacationController.h
//  mVacation
//
//  Created by Maxi on 09/07/2019.
//  Copyright © 2019 Naitra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@class Destination;
@interface mVacationController : NSObject
{
    Destination *europe;
}
@property (unsafe_unretained) IBOutlet NSTextField *transactionField;
@property (unsafe_unretained) IBOutlet NSTextField *balanceField;
- (IBAction)spendDollars:(id)sender;
- (IBAction)chargeCreditCard:(id)sender;
@end
