//
//  D2InfoDetailView.m
//  Experience Sharing
//
//  Created by Tom Hu on 11/16/13.
//  Copyright (c) 2013 Tom Hu. All rights reserved.
//

#import "D2InfoDetailView.h"
#import "D2AnswerCell.h"

@interface D2InfoDetailView ()

@property (strong, nonatomic) D2ExInfo *info;

@end

@implementation D2InfoDetailView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

#pragma mark - UI Methods

- (void)configureInfoDetailViewWithInfo:(D2ExInfo *)info {
    // Set Data
    self.info = info;
    
    // Set Bg Color
    self.backgroundColor = [UIColor orangeColor];
    
    // Title Label & Content Text View (uneditable)
    [self configureTitleLabelAndContentTextView];
    
    // Answer Label
    [self configureAnswerLabel];
    
    // Answer Text View (editable)
    [self configureAnswerTextField];
}

- (void)configureTitleLabelAndContentTextView {
    // Set Text
    self.titleLabel.text = self.info.questionTitle;
    self.contentTextView.text = self.info.questionContent;
    
    [self.contentTextView setEditable:NO];
}

- (void)configureAnswerLabel {
    // Set Text
    self.answerLabel.text = @"回复：";
}

- (void)configureAnswerTextField {
    // Set Text
    self.answerTextView.text = @"测测额册册册册册册册册册册册册册册册册册册册册册册册色风萨尔多舒服噶额天气呃突然二哥份感情而撒地方企鹅我去玩儿去玩儿";
}

@end
