//
//  D2ViewController.m
//  Experience Sharing
//
//  Created by Tom Hu on 11/14/13.
//  Copyright (c) 2013 Tom Hu. All rights reserved.
//

#import "D2ViewController.h"
#import "D2ExInfo.h"
#import "D2ExInfoCell.h"

@interface D2ViewController ()

@property (strong, nonatomic) NSMutableArray *mainDataArray;//所有exInfo都存在里面，对应一个index，index - exInfo

@property (strong, nonatomic) NSMutableDictionary *tagDataDictionary;// 一个tag对应一个存放index的NSMutableArray，tag - exIndexArray

@property (strong, nonatomic) NSMutableArray *myQuestionIndexArray;
@property (strong, nonatomic) NSMutableDictionary *myQuestionDictionary;//tag - myQuestionIndexArray

@property (strong, nonatomic) NSMutableArray *myAnswerIndexArray;
@property (strong, nonatomic) NSMutableDictionary *myAnswerDictionary;//tag - myAnswerIndexArray

@property (strong, nonatomic) NSMutableArray *tableViewDataIndexArray;
@property (strong, nonatomic) NSMutableArray *tableViewDataArray;

@end

@implementation D2ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.tableViewDataArray = self.mainDataArray;
    
    // Test
    D2ExInfo *info1 = [[D2ExInfo alloc] init];
    [info1 addTag:@"车祸"];
    [info1 addTag:@"飙车"];
    [info1 setInfoOwner:@"hahah" questionTitle:@"我能不能睡觉？" questionContent:@"今天很困......."];
    [self addExInfo:info1];
    
    D2ExInfo *info2 = [[D2ExInfo alloc] init];
    [info2 addTag:@"发疯"];
    [info2 addTag:@"酒驾"];
    [info2 addTag:@"车祸"];
    [info2 setInfoOwner:@"Tom" questionTitle:@"小学妹" questionContent:@"小学妹小学妹小学妹"];
    [self addExInfo:info2];
    
    D2ExInfo *info3 = [[D2ExInfo alloc] init];
    [info3 setInfoOwner:@"哈哈" questionTitle:@"test" questionContent:@"just for testasdfasdfasdfsdafsadfasdfsadfsafd"];
    [self addExInfo:info3];
    
    NSLog(@"Test Finished");
    
    [self configureViewOne];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Properties

- (NSMutableArray *)mainDataArray {
    if (_mainDataArray == nil) {
        _mainDataArray = [[NSMutableArray alloc] init];
    }
    return _mainDataArray;
}

- (NSMutableDictionary *)tagDataDictionary {
    if (_tagDataDictionary == nil) {
        _tagDataDictionary = [[NSMutableDictionary alloc] init];
        
        //保留一个空标签的位置
        [_tagDataDictionary setObject:[[NSMutableArray alloc] init] forKey:@""];
    }
    return _tagDataDictionary;
}

#pragma mark - UI Methods

// View One
- (void)configureViewOne {
    [self configureTagViewOne];
}

- (void)configureTagViewOne {
    int count = 0;
    for (NSString *tag in self.tagDataDictionary) {
        if ([tag isEqualToString:@""]) {
            count++;
            continue;
        }
        
        UIButton *btn;
        switch (count) {
            case 1: btn = self.tagOne;      break;
            case 2: btn = self.tagTwo;      break;
            case 3: btn = self.tagThree;    break;
            case 4: btn = self.tagFour;     break;
            case 5: btn = self.tagFive;     break;
            case 6: btn = self.tagSix;      break;
            default:                        break;
        }
        [btn setHidden:NO];
        [btn setTitle:tag forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(tagButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
        count++;
    }
}

// View Two
- (void)configureViewTwo {
    
}

- (void)configureTagViewTwo {
    
}

// View Three
- (void)configureViewThree {
    
}

- (void)configureTagViewThree {
    
}

#pragma mark - Actions

- (IBAction)experienceBoxButtonClicked:(UIButton *)sender {
    self.buttonView.backgroundColor = self.viewOne.backgroundColor;
    self.viewOne.hidden = NO;
    self.viewTwo.hidden = YES;
    self.viewThree.hidden = YES;
    
    self.tableViewDataArray = self.mainDataArray;
    [self.exInfoTableView reloadData];
}

- (IBAction)myQuestionButtonClicked:(UIButton *)sender {
    self.buttonView.backgroundColor = self.viewTwo.backgroundColor;
    self.viewOne.hidden = YES;
    self.viewTwo.hidden = NO;
    self.viewThree.hidden = YES;
    
}

- (IBAction)myAnswerButtonClicked:(UIButton *)sender {
    self.buttonView.backgroundColor = self.viewThree.backgroundColor;
    self.viewOne.hidden = YES;
    self.viewTwo.hidden = YES;
    self.viewThree.hidden = NO;
}

- (void)tagButtonClicked:(UIButton *)sender {
    if ([sender.superview isEqual:self.tagViewOne]) {
        self.tableViewDataIndexArray = [self.tagDataDictionary objectForKey:sender.titleLabel.text];
        [self loadTableViewData];
        [self.exInfoTableView reloadData];
    } else if ([sender.superview isEqual:self.tagViewTwo]) {
        self.tableViewDataIndexArray = [self.myQuestionDictionary objectForKey:sender.titleLabel.text];
        [self loadTableViewData];
        [self.myQuestionTableView reloadData];
    } else if ([sender.superview isEqual:self.tagViewThree]) {
        self.tableViewDataIndexArray = [self.myAnswerDictionary objectForKey:sender.titleLabel.text];
        [self loadTableViewData];
        [self.myAnswerTableView reloadData];
    }
}

#pragma mark - Data

- (void)addExInfo:(D2ExInfo *)exInfo {
    [self.mainDataArray addObject:exInfo];
    NSNumber *index = [NSNumber numberWithInt:self.mainDataArray.count - 1];
    
    NSMutableArray *tagList = exInfo.tagList;
    // 没有tag，加一个空标签
    if (tagList.count == 0) {
        [tagList addObject:@""];
    }
    
    for (NSString *tag in tagList) {
        NSMutableArray *exIndexArray = [self.tagDataDictionary objectForKey:tag];
        if (!exIndexArray) {
            exIndexArray = [[NSMutableArray alloc] init];
            [exIndexArray addObject:index];
            [self.tagDataDictionary setObject:exIndexArray forKey:tag];
        } else {
            [exIndexArray addObject:index];
        };
    }
}

- (void)removeExInfo:(D2ExInfo *)exInfo {
    NSNumber *index = [NSNumber numberWithInteger:[self.mainDataArray indexOfObject:exInfo]];
    for (NSString *tag in exInfo.tagList) {
        NSMutableArray *exIndexArray = [self.tagDataDictionary objectForKey:tag];
        [exIndexArray removeObject:index];
    }
}

- (void)loadTableViewData {
    self.tableViewDataArray = [[NSMutableArray alloc] init];
    for (NSNumber *index in self.tableViewDataIndexArray) {
        [self.tableViewDataArray addObject:[self.mainDataArray objectAtIndex:[index unsignedIntegerValue]]];
    }
}

#pragma mark - UISearchBarDelegate

// called when keyboard search button pressed
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    NSLog(@"%@", searchBar.text);
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.tableViewDataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    D2ExInfoCell *cell = [tableView dequeueReusableCellWithIdentifier:@"exInfoCell"];
    
    if (cell == nil) {
        cell = [[D2ExInfoCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"exInfoCell"];
    }
    
    [cell configureExInfoCellWithInfo:[self.tableViewDataArray objectAtIndex:indexPath.row]];
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


@end
