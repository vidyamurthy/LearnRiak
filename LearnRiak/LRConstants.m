//
//  LRConstants.m
//  LearnRiak
//
//  Created by Vidya Murthy on 5/6/14.
//  Copyright (c) 2014 Vidya Murthy. All rights reserved.
//

#import "LRConstants.h"

@implementation LRConstants

+ (UIImage *)imageOfFontelloString:(NSString *)inFontelloString
                          fontSize:(CGFloat)inFontSize
                         textColor:(UIColor *)inTextColor
                              size:(CGSize)inSize {

    NSMutableDictionary *attributes = [NSMutableDictionary new];
    NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
    
    attributes[NSFontAttributeName] = [UIFont fontWithName:@"fontellofull" size:inFontSize];
    attributes[NSForegroundColorAttributeName] = inTextColor;
    paragraphStyle.alignment = NSTextAlignmentCenter;
    attributes[NSParagraphStyleAttributeName] = paragraphStyle;
    
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:inFontelloString attributes:attributes];
    return [self imageOfAttributedString:attributedString
                           backgroundColor:UIColor.clearColor//[Layout colorWithHex:0xff0000 alpha:0.3]
                                      size:inSize
                                    insets:UIEdgeInsetsMake(1,-2,0,0)
                       horizontalAlignment:UIControlContentHorizontalAlignmentCenter
                         verticalAlignment:UIControlContentVerticalAlignmentCenter
                                    opaque:NO];
}

+ (UIImage *)imageOfAttributedString:(NSAttributedString *)inAttributedString
                     backgroundColor:(UIColor *)inBackgroundColor
                                size:(CGSize)inSize
                              insets:(UIEdgeInsets)inInsets
                 horizontalAlignment:(UIControlContentHorizontalAlignment)inHorizontalAlignment
                   verticalAlignment:(UIControlContentVerticalAlignment)inVerticalAlignment
                              opaque:(BOOL)inOpaque {
    UIImage *image;
    CGRect frame = CGRectMake(0,0,inSize.width,inSize.height);
    UIGraphicsBeginImageContextWithOptions(inSize,inOpaque,0);
    if (inBackgroundColor) {
        [inBackgroundColor setFill];
        UIRectFill(frame);
    }
    if (inAttributedString) {
        CGSize textSize = [inAttributedString boundingRectWithSize:CGSizeMake(frame.size.width,99999) options:(NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading) context:nil].size;
        CGRect textFrame = [self frameOfAlignedSize:textSize inAvailableFrame:frame horizontalAlignment:inHorizontalAlignment verticalAlignment:inVerticalAlignment];
        textFrame = UIEdgeInsetsInsetRect(textFrame,inInsets);
        [inAttributedString drawInRect:textFrame];
    }
    image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

+ (CGRect)frameOfAlignedSize:(CGSize)inSize inAvailableFrame:(CGRect)inAvailableFrame horizontalAlignment:(UIControlContentHorizontalAlignment)inHorizontalAlignment verticalAlignment:(UIControlContentVerticalAlignment)inVerticalAlignment {
	CGRect frame;
	switch (inHorizontalAlignment) {
		case UIControlContentHorizontalAlignmentCenter: {
			frame.origin.x = (inAvailableFrame.origin.x + (inAvailableFrame.size.width - inSize.width) / 2);
			frame.size.width = inSize.width;
			break;
		}
		case UIControlContentHorizontalAlignmentLeft: {
			frame.origin.x = inAvailableFrame.origin.x;
			frame.size.width = inSize.width;
			break;
		}
		case UIControlContentHorizontalAlignmentRight: {
			frame.origin.x = (inAvailableFrame.origin.x + inAvailableFrame.size.width - inSize.width);
			frame.size.width = inSize.width;
			break;
		}
		case UIControlContentHorizontalAlignmentFill: {
			frame.origin.x = inAvailableFrame.origin.x;
			frame.size.width = inAvailableFrame.size.width;
			break;
		}
	}
	switch (inVerticalAlignment) {
		case UIControlContentVerticalAlignmentCenter: {
			frame.origin.y = (inAvailableFrame.origin.y + (inAvailableFrame.size.height - inSize.height) / 2);
			frame.size.height = inSize.height;
			break;
		}
		case UIControlContentVerticalAlignmentTop: {
			frame.origin.y = inAvailableFrame.origin.y;
			frame.size.height = inSize.height;
			break;
		}
		case UIControlContentVerticalAlignmentBottom: {
			frame.origin.y = (inAvailableFrame.origin.y + inAvailableFrame.size.height - inSize.height);
			frame.size.height = inSize.height;
			break;
		}
		case UIControlContentVerticalAlignmentFill: {
			frame.origin.y = inAvailableFrame.origin.y;
			frame.size.height = inAvailableFrame.size.height;
			break;
		}
	}
	return frame;
}


@end
