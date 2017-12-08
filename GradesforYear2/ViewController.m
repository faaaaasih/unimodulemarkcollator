//
//  ViewController.m
//  GradesforYear2
//
//  Created by Fasih Qureshi on 08/12/2017.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubview:self.titlelabel];
    
    [self.titlelabel setText:@"Grades in Year 2" withCompletionBlock:^{
        NSLog(@"Morphing Complete");
        ///test
        [self.titlelabel setAnimationDuration:10];
    }];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
