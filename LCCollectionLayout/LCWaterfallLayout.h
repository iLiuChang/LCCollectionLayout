//
//  LCWaterfallLayout.h
//  LCCollectionLayout
//
//  Created by 刘畅 on 16/8/3.
//  Copyright © 2016年 LiuChang. All rights reserved.
//  瀑布流布局

#import <UIKit/UIKit.h>
@class LCWaterfallLayout;
@protocol LCWaterfallLayoutDelegate <NSObject>

- (CGFloat)waterfallLayout:(LCWaterfallLayout *)waterfallLayout heightForWidth:(CGFloat)width atIndexPath:(NSIndexPath *)indexPath;

@end

@interface LCWaterfallLayout : UICollectionViewLayout

/**
 *  上下左右距离
 */
@property (nonatomic, assign) UIEdgeInsets sectionInset;

/**
 *  列距
 */
@property (nonatomic, assign) CGFloat columnMargin;

/**
 *  行距
 */
@property (nonatomic, assign) CGFloat rowMargin;

/**
 *  总列数
 */
@property (nonatomic, assign) int columnsCount;

@property (nonatomic, weak) id<LCWaterfallLayoutDelegate> delegate;

@end
