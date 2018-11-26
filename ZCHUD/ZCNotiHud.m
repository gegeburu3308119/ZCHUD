//
//  ZCNotiHud.m
//  zhaopin
//
//  Created by 张葱 on 2018/11/11.
//  Copyright © 2018年 聪哥. All rights reserved.
//

#import "ZCNotiHud.h"
#define ZCScreenH [UIScreen mainScreen].bounds.size.height
#define ZCScreenW [UIScreen mainScreen].bounds.size.width
@implementation ZCNotiHud
+(void)showMessag:(NSString *)str{
    
    CGSize size = [labe.text boundingRectWithSize:CGSizeMake(300, labe.frame.size.height) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:labe.font} context:nil].size;
    UILabel * labe = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, size.width +20, size.height +20)];
    labe.backgroundColor = [UIColor blackColor];
    labe.textColor = [UIColor whiteColor];
    labe.text = [str isKindOfClass:[NSString class]]?str:@"未知错误";
    labe.font = [UIFont systemFontOfSize:14];
    labe.textAlignment = 1;
    labe.numberOfLines = 0;
   
    
    labe.layer.cornerRadius = 3;
    labe.layer.masksToBounds = YES;
    labe.center = CGPointMake(ZCScreenW/2, ZCScreenH/5*2);
    [[UIApplication sharedApplication].keyWindow addSubview:labe];
    
    CAKeyframeAnimation * animation = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    animation.duration = 0.3;
    NSMutableArray* values = [NSMutableArray array];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(0.1, 0.1, 1.0)]];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(1.2, 1.2, 1.0)]];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(0.9, 0.9, 1.0)]];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(1.0, 1.0, 1.0)]];
    animation.values = values;
    [labe.layer addAnimation:animation forKey:nil];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.6 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [labe removeFromSuperview];
    });
    
    
}



@end
