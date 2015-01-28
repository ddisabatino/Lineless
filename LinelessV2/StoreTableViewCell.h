//
//  StoreTableViewCell.h
//  LineLess V2
//
//  Created by Devin DiSabatino on 1/18/15.
//  Copyright (c) 2015 Disabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StoreTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *storeLabel;
@property (strong, nonatomic) IBOutlet UILabel *waitLabel;
@property (strong, nonatomic) IBOutlet UILabel *confidenceLabel;

@end
