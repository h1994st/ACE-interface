//
//  D2ViewController.m
//  Experience Sharing
//
//  Created by Tom Hu on 11/14/13.
//  Copyright (c) 2013 Tom Hu. All rights reserved.
//

#import "D2ViewController.h"
#import "D2ExInfo.h"

@interface D2ViewController ()

@property (strong, nonatomic) NSMutableArray *mainData;//所有exInfo都存在里面，对应一个index
@property (strong, nonatomic) NSMutableDictionary *tagData;// 一个tag对应一个存放index的NSMutableArray

@end

@implementation D2ViewController

#pragma mark - Properties

- (NSMutableArray *)mainData {
    if (_mainData == nil) {
        _mainData = [[NSMutableArray alloc] init];
    }
    return _mainData;
}

- (NSMutableDictionary *)tagData {
    if (_tagData == nil) {
        _tagData = [[NSMutableDictionary alloc] init];
        
        //保留一个空标签的位置
        [_tagData setObject:[[NSMutableArray alloc] init] forKey:@""];
    }
    return _tagData;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray *tagList = [[NSMutableArray alloc] init];
    [tagList addObject:@"车祸"];
    [tagList addObject:@"飙车"];
    D2ExInfo *info1 = [[D2ExInfo alloc] init];
    [self addExInfo:info1 withTagList:tagList];
    
    [tagList removeLastObject];
    D2ExInfo *info2 = [[D2ExInfo alloc] init];
    [self addExInfo:info2 withTagList:tagList];
    
    [tagList removeAllObjects];
    D2ExInfo *info3 = [[D2ExInfo alloc] init];
    [self addExInfo:info3 withTagList:tagList];
    
    NSLog(@"Test Finished");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Data

- (void)addExInfo:(D2ExInfo *)exInfo withTagList:(NSMutableArray *)tagList {
    [self.mainData addObject:exInfo];
    NSNumber *index = [NSNumber numberWithInt:self.mainData.count - 1];
    
    // 没有tag，加一个空标签
    if (tagList.count == 0) {
        [tagList addObject:@""];
    }
    
    for (NSString *tag in tagList) {
        NSMutableArray *exInfoArray = [self.tagData objectForKey:tag];
        if (!exInfoArray) {
            exInfoArray = [[NSMutableArray alloc] init];
            [exInfoArray addObject:index];
            [self.tagData setObject:exInfoArray forKey:tag];
        } else {
            [exInfoArray addObject:index];
        };
    }
}

- (void)deleteExInfo:(D2ExInfo *)exInfo {
    
}

@end
