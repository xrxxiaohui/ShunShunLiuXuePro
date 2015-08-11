//
//  MoreCell.m
//  hersForum
//
//  Created by hers on 12-12-12.
//  Copyright (c) 2012年 hers. All rights reserved.
//
#import "Define.h"
#import "MoreCell.h"

@implementation MoreCell
@synthesize tipLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.selectionStyle = UITableViewCellSelectionStyleNone;

        tipLabel  = [[UILabel alloc]initWithFrame:CGRectMake(90.0f, 8.0f, 140.0f, 25.0f)];
        tipLabel.textAlignment = NSTextAlignmentCenter;
        tipLabel.backgroundColor = [UIColor clearColor];
        tipLabel.textColor = kContentColor;
        tipLabel.font = kFontArial15;
        [self.contentView addSubview:tipLabel];
        [tipLabel release];
        
        actView = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
        actView.frame = CGRectMake(80.0f, 4.0f, 32.0f, 32.0f);
        [self.contentView addSubview:actView];
        [actView release];
        
        self.contentView.backgroundColor = [UIColor clearColor];
    }
    
    return self;
}

- (void)startAction{
    
    [actView startAnimating];
}

- (void)stopAction{
    
    [actView stopAnimating];
}

- (void)setTips:(NSString *)aTip{
    
    tipLabel.text = aTip;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end



