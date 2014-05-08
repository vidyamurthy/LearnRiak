//
//  LRConstants.h
//  LearnRiak
//
//  Created by Vidya Murthy on 5/6/14.
//  Copyright (c) 2014 Vidya Murthy. All rights reserved.
//

#import <Foundation/Foundation.h>

#define DARK_GREEN [UIColor colorWithRed:0.18 green:0.29 blue:0.29 alpha:1];
#define LIGHT_GREEN [UIColor colorWithRed:0.63 green:0.77 blue:0.74 alpha:1];


@interface LRConstants : NSObject

+ (UIImage *)imageOfFontelloString:(NSString *)inFontelloString
                          fontSize:(CGFloat)inFontSize
                         textColor:(UIColor *)inTextColor
                              size:(CGSize)inSize;

+ (UIImage *)imageOfAttributedString:(NSAttributedString *)inAttributedString
                     backgroundColor:(UIColor *)inBackgroundColor
                                size:(CGSize)inSize
                              insets:(UIEdgeInsets)inInsets
                 horizontalAlignment:(UIControlContentHorizontalAlignment)inHorizontalAlignment
                   verticalAlignment:(UIControlContentVerticalAlignment)inVerticalAlignment
                              opaque:(BOOL)inOpaque;

@end
