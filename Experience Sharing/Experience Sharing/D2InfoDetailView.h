//
//  D2InfoDetailView.h
//  Experience Sharing
//
//  Created by Tom Hu on 11/16/13.
//  Copyright (c) 2013 Tom Hu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "D2ExInfo.h"

@interface D2InfoDetailView : UIView

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UITextView *contentTextView;
@property (weak, nonatomic) IBOutlet UITableView *answerTableView;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (weak, nonatomic) IBOutlet UITextView *answerTextView;
@property (weak, nonatomic) IBOutlet UIButton *anwerButton;
@property (weak, nonatomic) IBOutlet UIButton *closeViewButton;

- (void)configureInfoDetailViewWithInfo:(D2ExInfo *)info;

@end
