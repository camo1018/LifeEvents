//
//  CatalogAppDelegate.h
//  FuneralCatalog
//
//  Created by Paul Park on 2/17/12.
//  Copyright (c) 2012 SC Governor's School for Science and Mathematics. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Product;
@class Category;
@class CatalogAdminPanelAddProductView;
@class CatalogAdminEditViewController;

@interface CatalogAppDelegate : UIResponder <UIApplicationDelegate>
{
    NSMutableArray *dataArray;
    NSMutableArray *filterArray;
    NSMutableArray *fieldArray;
    Product *chosenProduct;
    Category *chosenCategory;
    CatalogAdminPanelAddProductView *addProductView;
    CatalogAdminEditViewController *editViewController;
    
    // Currently chosen image from album, if any.
    UIImage *currentImage;
    
    // Currently chosen field type, if any.
    NSString *fieldType;
}

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) NSMutableArray *dataArray;
@property (nonatomic, retain) NSMutableArray *filterArray;
@property (nonatomic, retain) NSMutableArray *fieldArray;
@property (nonatomic, retain) Product *chosenProduct;
@property (nonatomic, retain) Category *chosenCategory;
@property (nonatomic, retain) UIImage *currentImage;
@property (nonatomic, retain) CatalogAdminPanelAddProductView *addProductView;
@property (nonatomic, retain) CatalogAdminEditViewController *editViewController;
@property (nonatomic, retain) NSString *fieldType;

@end
