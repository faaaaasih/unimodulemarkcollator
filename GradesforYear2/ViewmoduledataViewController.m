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
    
singletonclass *ref = [singletonclass  sharedinstance];
    
    [ref setSem:self.mod.semester];
    
    // Do any additional setup after loading the view.
    
    self.modulelabel.text = self.mod.Subject;
    self.Semlabel.text = self.mod.semester;
    self.modulelabel.lineBreakMode = NSLineBreakByWordWrapping; // These two lines of code have been implemented so that there is a word wrap with the UILabel. Since its a long descripion, it looks better when the text is word wrapped as opposed to one long line.
    self.modulelabel.numberOfLines = 0;
    
    [ self.markper shine];
    [self.perofmod shine];
    
    
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
