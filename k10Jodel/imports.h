//
//  imports.h
//  k10Jodel
//
//  Created by MacBook 10 on 05/01/2019.
//


#import <UIKit/UIKit.h>
#import "substrate.h"
#import "FRPrefs.h"
#import "k10JodelppVC.h"
#import "ATAssistiveTools.h"
#import "ATFakeLocationView.h"


@interface k10: UIViewController

@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;

@end
@interface JDLPictureFeedMainNavigationController : UIViewController
{
    UIImageView *largeImageView;
}

@property (nonatomic, retain) UIImageView *largeImageView;




-(void)SaveAction;

@end

@interface JDLImagePreviewViewController :  UIViewController<UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property(nonatomic) __weak UIImageView *previewImageView;

@end


@interface _TtC5Jodel28JDLUserSectionViewController : UIViewController

- (void)moreTap:(id)arg1;
- (void)viewDidLoad;
@property(nonatomic) __weak UITableView *tableView; // @synthesize tableView;

@end

@interface VpeRh3t : UIView

@property (nonatomic, copy, readwrite) UIColor *backgroundColor;

@end
@interface K4p7Yx : UIView

@property (nonatomic, copy, readwrite) UIColor *backgroundColor;

@end
