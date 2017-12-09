//
//  IntroViewController.h
//  GradesforYear2
//
//  Created by Fasih Qureshi on 09/12/2017.
//
//

#import "ViewController.h"
#import "TOMSMorphingLabel.h"
#import "AppDelegate.h"

#import "YALTabBarItem.h"

//controller
#import "YALFoldingTabBarController.h"

//helpers
#import "YALAnimatingTabBarConstants.h"

@interface IntroViewController : ViewController
@property (weak, nonatomic) IBOutlet TOMSMorphingLabel *introlabel;

- (IBAction)beginbutton:(UIButton *)sender;

@end
