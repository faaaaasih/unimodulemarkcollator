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

@synthesize mark,per, ref;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.markpertex.delegate= self;
    self.perofmodtex.delegate = self;
    self.panview.delegate = self;

    self.ref = [singletonclass  sharedinstance];
    
    [self.ref setSem:self.mod.semester];
    
    // Do any additional setup after loading the view.
    
    self.modulelabel.text = self.mod.Subject;
    self.Semlabel.text = self.mod.semester;
    self.modulelabel.lineBreakMode = NSLineBreakByWordWrapping; // These two lines of code have been implemented so that there is a word wrap with the UILabel. Since its a long descripion, it looks better when the text is word wrapped as opposed to one long line.
    self.modulelabel.numberOfLines = 0;
    
    [ self.markper shine];
    [self.perofmod shine];
   

    //[self.markpertexges locationOfTouch:2 inView:nil];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    
    [self.markpertex resignFirstResponder];
    [self.perofmodtex resignFirstResponder];
    
    return YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)panvieaction:(UIPanGestureRecognizer *)sender {
    
    if ([self.markpertex isFirstResponder]){
        
        [self.markpertex resignFirstResponder];
        
        self.mark = [self.markpertex.text intValue ];
        
        [self.ref setMark:self.mark];
        
        
        NSLog(@"%i", self.mark);
     
    }
    
    if ([self.perofmodtex isFirstResponder]){
        
        [self.perofmodtex resignFirstResponder];
        self.per = [self.perofmodtex.text intValue];
        [self.ref setPercentofmode:self.per];
        NSLog(@"%i", self.per);
        

    }

}



@end
