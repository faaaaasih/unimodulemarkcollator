//
//  ViewmoduledataViewController.m
//  GradesforYear2
//
//  Created by Fasih Qureshi on 09/12/2017.
//
//

#import "ViewmoduledataViewController.h"

@interface ViewmoduledataViewController ()

@end

@implementation ViewmoduledataViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.modulelabel.text = self.mod.Subject;
    self.Semlabel.text = self.mod.semester;
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

@end
