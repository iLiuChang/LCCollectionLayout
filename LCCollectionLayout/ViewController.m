//
//  ViewController.m
//  LCCollectionLayout
//
//  Created by 刘畅 on 16/8/1.
//  Copyright © 2016年 LiuChang. All rights reserved.
//

#import "ViewController.h"
#import "LCLineFlowLayout.h"
static NSString *cellID = @"cellID";
@interface ViewController ()<UICollectionViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect rect = CGRectMake(0, 50, self.view.frame.size.width, 200);
    // cellectionView的高度不能太大（防止item换行）
    LCLineFlowLayout *flowLayout = [[LCLineFlowLayout alloc] init];
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:rect collectionViewLayout:flowLayout];
    collectionView.backgroundColor = [UIColor blackColor];
    collectionView.dataSource = self;
    [self.view addSubview:collectionView];
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:cellID];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 20;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
    cell.backgroundColor = [UIColor purpleColor];
    return cell;
}


@end
