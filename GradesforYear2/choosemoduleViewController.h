//
//  choosemoduleViewController.h
//  GradesforYear2
//
//  Created by Fasih Qureshi on 09/12/2017.
//
//

#import "ViewController.h"

#import "YALFoldingTabBar.h"

@interface choosemoduleViewController : ViewController  <YALTabBarDelegate>
@property (weak, nonatomic) IBOutlet UILabel *titleforfirst;
- (IBAction)buttonactionchoose:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *butout;

@end
