//
//  k10JodelppVC.m
//  k10Jodel
//
//  Created by MacBook 10 on 05/01/2019.
//

#import "k10JodelppVC.h"
#import "imports.h"


#define JDL10Color [UIColor colorWithRed:1.00 green:0.60 blue:0.03 alpha:1.0]
#define JDL10PPColor [UIColor colorWithRed:0.85 green:0.55 blue:0.17 alpha:1.0]
#define JDL10black [UIColor colorWithRed:0.33 green:0.33 blue:0.33 alpha:1.0]

@interface k10JodelppVC ()

@end

@implementation k10JodelppVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(void)loadk10JodelppSetting:(UIViewController *)viewController{
    FRPViewSection *headerSection = [FRPViewSection sectionWithHeight:70
                                                            initBlock:^(UITableViewCell *cell) {
                                                                /* design your cell as you wish */
                                                                /* block of code executed during cell initialization */
                                                                cell.backgroundColor = [UIColor clearColor];
                                                                
                                                                UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
                                                                label.font = [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:48];
                                                                [label setText:@"jodelpp"];
                                                                [label setTextColor:[UIColor blackColor]];
                                                                // [label setShadowColor:[UIColor colorWithRed:1/255.0f green:152/255.0f blue:117/255.0f alpha:1.0f]];
                                                                [label setShadowOffset:CGSizeMake(1,1)];
                                                                [label setTextAlignment:NSTextAlignmentCenter];
                                                                [label setTag:111];
                                                                
                                                                UILabel *underLabel = [[UILabel alloc] initWithFrame:CGRectZero];
                                                                [underLabel setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:14]];
                                                                [underLabel setText:@"Thanks for interrupting JodelPP"];
                                                                [underLabel setTextColor:[UIColor grayColor]];
                                                                [underLabel setTextAlignment:NSTextAlignmentCenter];
                                                                [underLabel setTag:222];
                                                                
                                                                [cell.contentView addSubview:label];
                                                                [cell.contentView addSubview:underLabel];
                                                            }
                                                          layoutBlock:^(UITableViewCell *cell) {
                                                              /* block of code executed during cell layoutSubviews */
                                                              [[cell.contentView viewWithTag:111] setFrame:CGRectMake(0, -5, cell.frame.size.width, 60)];
                                                              [[cell.contentView viewWithTag:222] setFrame:CGRectMake(0, 30, cell.frame.size.width, 60)];
                                                          }];
    
    
    FRPSection *sectionSettingJodelPP = [FRPSection sectionWithTitle:@"" footer:@""];
    
    
    
    FRPSwitchCell *switchClearBlur = [FRPSwitchCell cellWithTitle:@"ازالة ضبابية الصور"
                                                          setting:[FRPSettings settingsWithKey:@"ClearBlur" defaultValue:@NO]
                                                 postNotification:nil
                                                      changeBlock:^(UISwitch *switchView) {
                                                          // NSLog(@"switch 1 is: %@",[(UISwitch *)switchView isOn]?@"ENABLED":@"DISABLED");
                                                      }];
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////
    FRPSwitchCell *switchUpload = [FRPSwitchCell cellWithTitle:@"رفع صور من الالبوم"
                                                       setting:[FRPSettings settingsWithKey:@"ShowUploadBtn" defaultValue:@NO]
                                              postNotification:nil
                                                   changeBlock:^(UISwitch *switchView) {
                                                       // NSLog(@"switch 1 is: %@",[(UISwitch *)switchView isOn]?@"ENABLED":@"DISABLED");
                                                   }];
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////
    FRPSwitchCell *switchvideo = [FRPSwitchCell cellWithTitle:@"زيادة وقت تصوير الفيديو"
                                                      setting:[FRPSettings settingsWithKey:@"video" defaultValue:@NO]
                                             postNotification:nil
                                                  changeBlock:^(UISwitch *switchView) {
                                                      // NSLog(@"switch 1 is: %@",[(UISwitch *)switchView isOn]?@"ENABLED":@"DISABLED");
                                                  }];
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////
    FRPSwitchCell *switchiPad = [FRPSwitchCell cellWithTitle:@"iPad"
                                                     setting:[FRPSettings settingsWithKey:@"isiPad" defaultValue:@NO]
                                            postNotification:nil
                                                 changeBlock:^(UISwitch *switchView) {
                                                     
                                                 }];
    //    ///////////////////////////////////////////////////////////////////////////////////////////////////////////
    //    FRPSwitchCell *switchFLEXible = [FRPSwitchCell cellWithTitle:@"FLEXible"
    //                                                       setting:[FRPSettings settingsWithKey:@"FLEXible" defaultValue:@NO]
    //                                              postNotification:nil
    //                                                     changeBlock:^(UISwitch *switchView) {
    //                                                         // NSLog(@"switch 1 is: %@",[(UISwitch *)switchView isOn]?@"ENABLED":@"DISABLED");
    //                                                     }];
    
    
    [switchClearBlur.switchView setOnTintColor:[UIColor colorWithRed:0 green:0.545 blue:0.894 alpha:1]];
    [switchUpload.switchView setOnTintColor:[UIColor colorWithRed:0 green:0.545 blue:0.894 alpha:1]];
    [switchvideo.switchView setOnTintColor:[UIColor colorWithRed:0 green:0.545 blue:0.894 alpha:1]];
    //    [switchFakeLocation.switchView setOnTintColor:[UIColor colorWithRed:0 green:0.545 blue:0.894 alpha:1]];
    //    [switchFLEXible.switchView setOnTintColor:[UIColor colorWithRed:0 green:0.545 blue:0.894 alpha:1]];
    
    [sectionSettingJodelPP addCell:switchClearBlur];
    [sectionSettingJodelPP addCell:switchUpload];
    [sectionSettingJodelPP addCell:switchvideo];
    [sectionSettingJodelPP addCell:switchiPad];
    //    [sectionSettingJodelPP addCell:switchFakeLocation];
    //    [sectionSettingJodelPP addCell:switchFLEXible];
    /////////////////////////////////////////////////////////////////////////////////////////////////////
    NSURL *kalashrahprofile = [[NSURL alloc] initWithString:@"https://pbs.twimg.com/profile_images/1004899885391532033/YJsPLyUM_400x400.jpg"];
    NSData *kalashrahdata = [NSData dataWithContentsOfURL:kalashrahprofile];
    
   
   
    
    FRPSection *sectionDeveloper = [FRPSection sectionWithTitle:@"Developer Tweak" footer:@""];
    
    [sectionDeveloper addCell:[FRPDeveloperCell cellWithTitle:@"khalid Alashrah" detail:@"@kalashrah" image:[UIImage imageWithData:kalashrahdata] url:@"https://twitter.com/kalashrah"]];
    /////////////////////////////////////////////////////////////////////////////////////////////////////
    
    
    FRPreferences *table = [FRPreferences tableWithSections:@[sectionSettingJodelPP,sectionDeveloper]
                                                      title:@"k10"
                                                  tintColor:JDL10Color];
    
    
    
    [viewController.navigationController pushViewController:table animated:YES];
    
   
}



@end
