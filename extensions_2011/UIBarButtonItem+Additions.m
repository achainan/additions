//
//  UIBarButtonItem+Additions.m
//  
//
//  Created by Ajay Chainani on 2/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "UIBarButtonItem+Additions.h"

@implementation UIBarButtonItem(MyCategory)

+ (UIBarButtonItem*)barItemWithImage:(UIImage*)image target:(id)target action:(SEL)action {
  
  return [self barItemWithImage:image downImage:nil target:target action:action];
  
}

+ (UIBarButtonItem*)barItemWithImage:(UIImage*)image downImage:(UIImage*)selectedImage target:(id)target action:(SEL)action {
  
  UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
  [button setBackgroundImage:image forState:UIControlStateNormal];
  [button setBackgroundImage:selectedImage forState:UIControlStateHighlighted];
  
  button.frame= CGRectMake(0.0, 0.0, image.size.width, image.size.height);
  [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
  
  UIView *v = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, image.size.width+5, image.size.height) ];
  
  [v addSubview:button];
  
  return [[UIBarButtonItem alloc] initWithCustomView:v];
}

@end