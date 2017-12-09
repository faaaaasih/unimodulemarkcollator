//
//  IntroViewController.m
//  GradesforYear2
//
//  Created by Fasih Qureshi on 09/12/2017.
//
//

#import "IntroViewController.h"

@interface IntroViewController ()

@end

@implementation IntroViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    [self.view addSubview:self.introlabel];
    [self.introlabel setText:@"Grades for Year 2" withCompletionBlock:^{
        NSLog(@"Done");
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)beginbutton:(UIButton *)sender {
    
    AppDelegate *app = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    
   YALFoldingTabBarController *tabBarController = (YALFoldingTabBarController *) app.window.rootViewController;
  
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UITabBarController *vc = (UITabBarController *)[storyboard instantiateViewControllerWithIdentifier:@"tabbar"];
    
    [self presentViewController:vc animated:YES completion:nil];

    
    
    //prepare leftBarItems
    YALTabBarItem *item1 = [[YALTabBarItem alloc] initWithItemImage:[UIImage imageNamed:@"album-simple-7.png"] // initial image identifier
                                                      leftItemImage:nil // shen user clicks on initial item
                                                     rightItemImage:nil];
    
    
    YALTabBarItem *item2 = [[YALTabBarItem alloc] initWithItemImage: [UIImage imageNamed:@"book-cover-star-7.png"]
                                                      leftItemImage: nil
                                                     rightItemImage:nil];
    
    tabBarController.leftBarItems = @[item1, item2];
    
    
    
    //prepare rightBarItems
    
    
    
    //YALTabBarItem *item3 = [[YALTabBarItem alloc] initWithItemImage:nil
    // leftItemImage:nil
    //rightItemImage:nil];
    
    // YALTabBarItem *item4 = [[YALTabBarItem alloc] initWithItemImage:nil
    //      leftItemImage:nil
    //   rightItemImage:nil];
    
    //abBarController.rightBarItems = @[item3, item4];
    
    tabBarController.tabBarView.extraTabBarItemHeight = YALExtraTabBarItemsDefaultHeight; // extra details
    tabBarController.tabBarView.offsetForExtraTabBarItems = YALForExtraTabBarItemsDefaultOffset;
    tabBarController.tabBarView.backgroundColor = [UIColor colorWithRed:94.f/255.f green:91.f/255.f blue:149.f/255.f alpha:1.f];
    tabBarController.tabBarView.tabBarColor = [UIColor colorWithRed:72.f/255.f green:211.f/255.f blue:178.f/255.f alpha:1.f];
    tabBarController.tabBarViewHeight = YALTabBarViewDefaultHeight;
    tabBarController.tabBarView.tabBarViewEdgeInsets = YALTabBarViewHDefaultEdgeInsets;
    tabBarController.tabBarView.tabBarItemsEdgeInsets = YALTabBarViewItemsDefaultEdgeInsets;
}
@end
