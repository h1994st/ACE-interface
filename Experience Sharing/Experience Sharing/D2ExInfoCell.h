//
//  D2ExInfoCell.h
//  Experience Sharing
//
//  Created by Tom Hu on 11/15/13.
//  Copyright (c) 2013 Tom Hu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "D2ExInfo.h"

@interface D2ExInfoCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *content;

- (void)configureExInfoCellWithInfo:(D2ExInfo *)exInfo;
- (D2ExInfo *)getExInfo;

@end
