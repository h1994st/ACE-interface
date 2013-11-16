//
//  D2ExInfoCell.m
//  Experience Sharing
//
//  Created by Tom Hu on 11/15/13.
//  Copyright (c) 2013 Tom Hu. All rights reserved.
//

#import "D2ExInfoCell.h"

@interface D2ExInfoCell ()

@property (strong, nonatomic) D2ExInfo *exInfo;

@end

@implementation D2ExInfoCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma mark - UI Methods

- (void)configureExInfoCellWithInfo:(D2ExInfo *)exInfo {
    self.exInfo = exInfo;
    self.title.text = exInfo.questionTitle;
    self.content.text = exInfo.questionContent;
}

#pragma mark - Methods

- (D2ExInfo *)getExInfo {
    return self.exInfo;
}

@end
