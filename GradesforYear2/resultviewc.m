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

@synthesize passedonref, newarrayofmark,arrayofpercen, arrayoftest, markm, perce,typetestpas ,tablecellforresult;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.passedonref = [singletonclass sharedinstance];
    self.markm = [self.passedonref mark ];
    self.perce = [self.passedonref percentofmode];
    self.typetestpas = [self.passedonref typeoftest];

   
    [[self.passedonref arraym] addObject: [NSNumber numberWithInt:self.markm]];
    [[self.passedonref arrayper] addObject:[NSNumber numberWithInt:self.perce]];
    [[self.passedonref typeoftestarr] addObject:self.typetestpas];
    
    //[self.passedonref setArraym: self.arrayofmark];

    self.newarrayofmark = [self.passedonref arraym];
    self.arrayofpercen = [self.passedonref arrayper];
    self.arrayoftest = [self.passedonref typeoftestarr];
    
    NSLog(@"Array : %@", [self.passedonref arraym]);
    NSLog(@"Array per : %@", [self.passedonref arrayper]);
     NSLog(@"Array per : %@", [self.passedonref typeoftestarr]);

    
  //  if (self.arrayofmark.count  == self.arrayofmark.count){
        
        //[self.arrayofmark addObject: [NSNumber numberWithInt:self.mark]];
   
      //  NSLog(@"%@", self.arrayofmark);

   // }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    NSMutableArray *arr = [self.passedonref typeoftestarr];
    
    return  arr.count;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
    return 1;
}

    
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    
    
    NSMutableArray *arr = [self.passedonref typeoftestarr];
    
    return [arr objectAtIndex:section];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"result" forIndexPath:indexPath];
    

        cell.textLabel.text = [NSString stringWithFormat:@"Mark: %@ Percent" , [[self.passedonref arraym] objectAtIndex:indexPath.section]];
        cell.detailTextLabel.text = [NSString stringWithFormat:@"Percentage of Module: %@ Percent" , [[self.passedonref arrayper] objectAtIndex:indexPath.section]];
    
    
    return cell;
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
