//
//  D2AnswerCell.m
//  Experience Sharing
//
//  Created by Tom Hu on 11/16/13.
//  Copyright (c) 2013 Tom Hu. All rights reserved.
//

#import "D2AnswerCell.h"

@implementation D2AnswerCell

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

//- (void)configureLabel:(UILabel *)label {
//    CGSize size= CGSizeMake(152,2000);
//    CGRect frame = label.frame;
//    UIFont *font = label.font;
//    CGSize labelSize = [label.text boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:nil context:nil];
//    frame.size = labelSize;
//    [label setFrame:frame];
//}

- (void)configureAnswerCell:(NSString *)owner content:(NSString *)content {
    self.ownerLabel.text = owner;
    self.answerContentLabel.text = content;
}

@end
