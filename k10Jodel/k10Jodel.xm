//
//  imports.h
//  k10Jodel
//
//  Created by kalashrah on 05/01/2019.


#import "imports.h"

#define JDL10Color [UIColor colorWithRed:1.00 green:0.60 blue:0.03 alpha:1.0]
#define JDL10black [UIColor colorWithRed:0.33 green:0.33 blue:0.33 alpha:1.0]



%hook UIVisualEffectView

-(void)layoutSubviews{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"ClearBlur"]) {
        self.hidden = YES;
    } else {
        return %orig;
    }
}

%end

%hook VpeRh3t

- (void)layoutSubviews {
    %orig;
    self.backgroundColor = JDL10black;
}

%end
%hook K4p7Yx

- (void)layoutSubviews {
    %orig;
    self.backgroundColor = JDL10black;
}

%end

%hook JDLPictureFeedMainNavigationController

- (void)viewDidLoad {
    %orig;
   
    UIButton *uploadbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    uploadbtn.frame = CGRectMake([UIScreen mainScreen].bounds.size.width - 100, [UIScreen mainScreen].bounds.size.height - 130, 50, 40);
    [uploadbtn setImage:[UIImage imageNamed:@"/Library/Application Support/JodelPP.bundle/UploadImg.png"] forState:UIControlStateNormal];
    [uploadbtn addTarget:self action:@selector(SaveAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:uploadbtn];
    
}
%new
-(void)SaveAction{
    UIImage *FeedImage = self.largeImageView.image;
    
    UIImageWriteToSavedPhotosAlbum(FeedImage, self, @selector(image:didFinishSavingWithError:contextInfo:), nil);
}
%new

- (void)image:(UIImage *)image
didFinishSavingWithError: (NSError *)error
contextInfo:(void *)contextInfo {
    if (!error){
        UIAlertView *alertError = [[UIAlertView alloc]initWithTitle:@"_!_" message:@"Saved" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles: nil];
        [alertError show];
    }
}
%end

%hook JDLImageCaptureViewController


- (void)setGMLVc:(double)arg1{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"video"]) {
        %orig(60.0);
    } else {
        return %orig;
    }
}
- (void)setcUSUZ8:(double)arg1{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"video"]) {
        %orig(60.0);
    } else {
        return %orig;
    }
}
- (void)setXO01:(double)arg1{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"video"]) {
        %orig(60.0);
    } else {
        return %orig;
    }
}
%end
%hook _TtC5Jodel6Gd9BRz

- (void)setYIh5rUYZ:(double)arg1{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"video"]) {
        %orig(60.0);
    } else {
        return %orig;
    }
}

%end
%hook JDLImagePreviewViewController


- (void)viewDidLoad {
 %orig;
 
 UIButton *uploadbtn = [UIButton buttonWithType:UIButtonTypeCustom];
 uploadbtn.frame = CGRectMake([UIScreen mainScreen].bounds.size.width - 120, [UIScreen mainScreen].bounds.size.height - 60, 50, 40);
 [uploadbtn setImage:[UIImage imageNamed:@"/Library/Application Support/k10Jodel.bundle/UploadImg.png"] forState:UIControlStateNormal];
 [uploadbtn addTarget:self action:@selector(uploaded) forControlEvents:UIControlEventTouchUpInside];
 [self.view addSubview:uploadbtn];
 
 }
 %new
 -(void)uploaded{
 
     UIImagePickerController *imagePickController = [[UIImagePickerController alloc]init];
     imagePickController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
     imagePickController.delegate= self;
     imagePickController.mediaTypes = [UIImagePickerController availableMediaTypesForSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
     [self presentViewController:imagePickController animated:YES completion:nil];
 
 
 }
 %new
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
    
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    self.previewImageView.image = image;
    [self dismissViewControllerAnimated:YES completion:NO];
}
%new
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [self dismissViewControllerAnimated:YES completion:NO];
}

%end
//////////////////////////////////////////////

%hook _TtC5Jodel28JDLUserSectionViewController

- (void)viewDidLoad {
    
    %orig;
    
    
    //////////////////////////////////////////////////////////////
    UIButton *k10btn = [[UIButton alloc]init];
    [k10btn setFrame:CGRectMake(0.5, 0.5, 48, 48)];
    [k10btn setTitle:@"10" forState:UIControlStateNormal];
    [k10btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    k10btn.font = [UIFont fontWithName:@"HelveticaNeue" size:30];
    [k10btn addTarget:self action:@selector(k10PrefcAction) forControlEvents:UIControlEventTouchUpInside];
    k10btn.layer.cornerRadius = 24;
    k10btn.layer.masksToBounds = YES;
    k10btn.layer.borderWidth = 3;
    k10btn.layer.borderColor = [UIColor whiteColor].CGColor;
    
    ///////////////////////////////////////////////////////////////
    
    UISwitch *Locationk10Switch = [[UISwitch alloc]init];
    [Locationk10Switch setFrame:CGRectMake(55, 10, 0, 0)];
    [Locationk10Switch addTarget:self action:@selector(ShowMap:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    [self.view addSubview:Locationk10Switch];
    [self.view addSubview:k10btn];
    
}
%new
-(void)k10PrefcAction{
    [[k10JodelppVC alloc] loadk10JodelppSetting:self];
}
%new
-(void)ShowMap:(id)sender {
    
    UISwitch *Locationk10Switch = (UISwitch *)sender;
    if ([Locationk10Switch isOn]) {
        
        [[ATAssistiveTools sharedInstance] show];
        ////////////////////////////////////////////////////
        ATFakeLocationView *simLocView = [[ATFakeLocationView alloc] init];
        [[ATAssistiveTools sharedInstance] addCustomView:simLocView forTitle:@"FakeLocation"];
        ////////////////////////////////////////////////////
        
        
        
    } else {
        exit(0);
    }
}



%end
















