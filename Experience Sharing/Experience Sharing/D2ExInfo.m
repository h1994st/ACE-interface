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

- (void)addAnswer:(NSString *)answer {
    [self.answerArray addObject:answer];
}

- (void)removeAnswer:(NSString *)answer {
    [self.answerArray removeObject:answer];
}

- (void)setInfoOwner:(NSString *)owner
       questionTitle:(NSString *)questionTitle
     questionContent:(NSString *)questionContent {
    self.owner = owner;
    self.questionTitle = questionTitle;
    self.questionContent = questionContent;
}

@end
