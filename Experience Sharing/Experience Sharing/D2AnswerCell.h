//
//  D2AnswerCell.h
//  Experience Sharing
//
//  Created by Tom Hu on 11/16/13.
//  Copyright (c) 2013 Tom Hu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface D2AnswerCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *ownerLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerContentLabel;

- (void)configureAnswerCell:(NSString *)owner content:(NSString *)content;

@end
