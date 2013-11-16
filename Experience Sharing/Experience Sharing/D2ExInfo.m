//
//  D2ExInfo.m
//  Experience Sharing
//
//  Created by Tom Hu on 11/15/13.
//  Copyright (c) 2013 Tom Hu. All rights reserved.
//

#import "D2ExInfo.h"

@interface D2ExInfo ()


@end

@implementation D2ExInfo

- (id)init
{
    self = [super init];
    if (self) {
        _answerArray = [[NSMutableArray alloc] init];
    }
    return self;
}

#pragma mark - Properities

- (NSMutableArray *)tagList {
    if (_tagList == nil) {
        _tagList = [[NSMutableArray alloc] init];
    }
    return _tagList;
}

#pragma mark - Methods

- (void)addTag:(NSString *)tag {
    [self.tagList addObject:tag];
}

- (void)removeTag:(NSString *)tag {
    [self.tagList removeObject:tag];
}

- (void)addAnswer:(NSString *)answerContent owner:(NSString *)owner {
    D2AnswerItem *answerItem = [[D2AnswerItem alloc] init];
    answerItem.owner = owner;
    answerItem.answerContent = answerContent;
    [self.answerArray addObject:answerItem];
}

- (void)removeAnswer:(D2AnswerItem *)answerItem {
    [self.answerArray removeObject:answerItem];
}

- (void)setInfoOwner:(NSString *)owner
       questionTitle:(NSString *)questionTitle
     questionContent:(NSString *)questionContent {
    self.owner = owner;
    self.questionTitle = questionTitle;
    self.questionContent = questionContent;
}

@end
