//
// HJTextView
// Version 1.0.0
// Created by Jeffery He(hejicode@gmail.com) on 15/4/29.
//

#import "HJTextView.h"

@interface HJTextView ()

@property (nonatomic, weak) UILabel *holderLabel;

@end

@implementation HJTextView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setupViews];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self setupViews];
    }
    return self;
}

- (void)setupViews {
    // init font, default 15.0f
    self.font = [UIFont systemFontOfSize:15.0f];
    
    // init holderLabel
    [self setupLabel];
    
    // add notification
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(textViewPlaceHolderDidChanged:)
                                                 name:UITextViewTextDidChangeNotification
                                               object:self];
}

/**
 *  init label
 */
- (void)setupLabel {
    UILabel *label = [[UILabel alloc] init];
    label.numberOfLines = 0;
    // placeHolder的默认颜色为灰色
    label.textColor = [UIColor grayColor];
    [self insertSubview:label atIndex:0];
    self.holderLabel = label;
}

- (void)setPlaceHolder:(NSString *)placeHolder {
    _placeHolder = [placeHolder copy];
    if (placeHolder.length) {
        self.holderLabel.hidden = NO;
        self.holderLabel.text = _placeHolder;
        self.holderLabel.font = self.font;
        NSDictionary *attDic = @{NSFontAttributeName : self.holderLabel.font};
        
        CGFloat labelRectX = 5.0f;
        CGFloat labelRectY = 7.0f;
        CGFloat labelRectW = self.frame.size.width - labelRectX * 2;
        CGFloat labelRectH = self.frame.size.height - labelRectY * 2;
        CGSize labelSizeConstrain = CGSizeMake(labelRectW, labelRectH);
        
        if ([_placeHolder respondsToSelector:@selector(boundingRectWithSize:options:attributes:context:)]) {
            CGRect labelRect = [_placeHolder boundingRectWithSize:labelSizeConstrain
                                                          options:NSStringDrawingUsesLineFragmentOrigin
                                                       attributes:attDic
                                                          context:nil];
            self.holderLabel.frame = CGRectMake(labelRectX, labelRectY, labelRect.size.width, labelRect.size.height);
        } else {
#if __IPHONE_OS_VERSION_MIN_REQUIRED < 70000
            CGSize fontSize = [_placeHolder sizeWithFont:self.holderLabel.font];
            CGRect labelRect = CGRectMake(0.0f, 0.0f, fontSize.width, fontSize.height);
            self.holderLabel.frame = CGRectMake(labelRectX, labelRectY, labelRect.size.width, labelRect.size.height);
#endif
        }
        
    } else {
        self.holderLabel.hidden = YES;
    }
}

- (void)setHolderColor:(UIColor *)holderColor {
    _holderColor = holderColor;
    self.holderLabel.textColor = _holderColor;
}

- (void)textViewPlaceHolderDidChanged:(NSNotification *)notification {
    if (self.text.length) {
        self.holderLabel.hidden = YES;
    } else {
        self.holderLabel.hidden = NO;
    }
}

- (void)setFont:(UIFont *)font {
    [super setFont:font];
    self.placeHolder = self.placeHolder;
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
