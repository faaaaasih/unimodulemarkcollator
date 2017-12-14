//
//  resultviewc.m
//  GradesforYear2
//
//  Created by Fasih Qureshi on 13/12/2017.
//
//

#import "resultviewc.h"

@interface resultviewc ()

@end

@implementation resultviewc

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.passedonref = [singletonclass sharedinstance];
    self.markm = [self.passedonref mark ];
    self.perce = [self.passedonref percentofmode];

   
    [[self.passedonref arraym] addObject: [NSNumber numberWithInt:self.markm]];
    [[self.passedonref arrayper] addObject:[NSNumber numberWithInt:self.perce]];
    
    
    //[self.passedonref setArraym: self.arrayofmark];

    self.newarrayofmark = [self.passedonref arraym];
    self.arrayofpercen = [self.passedonref arrayper];
    
    NSLog(@"Array : %@", [self.passedonref arraym]);
    NSLog(@"Array per : %@", [self.passedonref arrayper]);

    
  //  if (self.arrayofmark.count  == self.arrayofmark.count){
        
        //[self.arrayofmark addObject: [NSNumber numberWithInt:self.mark]];
   
      //  NSLog(@"%@", self.arrayofmark);

   // }
    
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
