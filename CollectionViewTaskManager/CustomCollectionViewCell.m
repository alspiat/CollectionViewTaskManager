//
//  CustomCollectionViewCell.m
//  CollectionViewTaskManager
//
//  Created by Алексей on 04.07.2018.
//  Copyright © 2018 Алексей. All rights reserved.
//

#import "CustomCollectionViewCell.h"

@implementation CustomCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = UIColor.lightGrayColor;
    }
    return self;
}

- (UILabel *)textLabel {
    if (!_textLabel) {
        _textLabel = [[UILabel alloc] init];
        _textLabel.translatesAutoresizingMaskIntoConstraints = NO;
        
        [self addSubview:_textLabel];
        
        [NSLayoutConstraint activateConstraints:@[
                                                  [_textLabel.centerXAnchor constraintEqualToAnchor:self.centerXAnchor],
                                                  [_textLabel.centerYAnchor constraintEqualToAnchor:self.centerYAnchor]
                                                  ]];
    }
    return _textLabel;
}

@end
