//
//  D2ExInfo.h
//  Experience Sharing
//
//  Created by Tom Hu on 11/15/13.
//  Copyright (c) 2013 Tom Hu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface D2ExInfo : NSObject

@property (strong, nonatomic) NSMutableArray *tagList;

@property (strong, nonatomic) NSString *owner;
@property (strong, nonatomic) NSString *questionTitle;
@property (strong, nonatomic) NSString *questionContent;
@property (strong, nonatomic) NSMutableArray *answerArray;// NSString

- (void)addTag:(NSString *)tag;
- (void)removeTag:(NSString *)tag;
- (void)setInfoOwner:(NSString *)owner
       questionTitle:(NSString *)questionTitle
     questionContent:(NSString *)questionContent;

@end
