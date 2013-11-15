//
//  D2ViewController.h
//  Experience Sharing
//
//  Created by Tom Hu on 11/14/13.
//  Copyright (c) 2013 Tom Hu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface D2ViewController : UIViewController <UISearchBarDelegate, UITableViewDataSource, UITableViewDelegate>

// Main View
@property (weak, nonatomic) IBOutlet UIView *bgView;
@property (weak, nonatomic) IBOutlet UIView *rightBgView;
@property (weak, nonatomic) IBOutlet UIView *buttonView;
@property (weak, nonatomic) IBOutlet UIView *rightMainView;

// Three Buttons
@property (weak, nonatomic) IBOutlet UIButton *experienceBox;
@property (weak, nonatomic) IBOutlet UIButton *myQuestion;
@property (weak, nonatomic) IBOutlet UIButton *myAnswer;

// View One - Experience Box
@property (weak, nonatomic) IBOutlet UIView *viewOne;
@property (weak, nonatomic) IBOutlet UITableView *exInfoTableView;
@property (weak, nonatomic) IBOutlet UIView *tagViewOne;
@property (weak, nonatomic) IBOutlet UIButton *tagOne;
@property (weak, nonatomic) IBOutlet UIButton *tagTwo;
@property (weak, nonatomic) IBOutlet UIButton *tagThree;
@property (weak, nonatomic) IBOutlet UIButton *tagFour;
@property (weak, nonatomic) IBOutlet UIButton *tagFive;
@property (weak, nonatomic) IBOutlet UIButton *tagSix;

// View Two - My Question
@property (weak, nonatomic) IBOutlet UIView *viewTwo;
@property (weak, nonatomic) IBOutlet UIView *tagViewTwo;
@property (weak, nonatomic) IBOutlet UIButton *myQuestionTagOne;
@property (weak, nonatomic) IBOutlet UIButton *myQuestionTagTwo;
@property (weak, nonatomic) IBOutlet UIButton *myQuestionTagThree;
@property (weak, nonatomic) IBOutlet UIButton *myQuestionTagFour;
@property (weak, nonatomic) IBOutlet UIButton *myQuestionTagFive;
@property (weak, nonatomic) IBOutlet UIButton *myQuestionTagSix;
@property (weak, nonatomic) IBOutlet UITableView *myQuestionTableView;

// View Three - My Answer
@property (weak, nonatomic) IBOutlet UIView *viewThree;
@property (weak, nonatomic) IBOutlet UIView *tagViewThree;
@property (weak, nonatomic) IBOutlet UIButton *myAnswerTagOne;
@property (weak, nonatomic) IBOutlet UIButton *myAnswerTagTwo;
@property (weak, nonatomic) IBOutlet UIButton *myAnswerTagThree;
@property (weak, nonatomic) IBOutlet UIButton *myAnswerTagFour;
@property (weak, nonatomic) IBOutlet UIButton *myAnswerTagFive;
@property (weak, nonatomic) IBOutlet UIButton *myAnswerTagSix;
@property (weak, nonatomic) IBOutlet UITableView *myAnswerTableView;

@end