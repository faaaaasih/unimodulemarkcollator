//
//  subjectTableViewController.m
//  GradesforYear2
//
//  Created by Fasih Qureshi on 09/12/2017.
//
//

#import "subjectTableViewController.h"

@interface subjectTableViewController ()

@end

@implementation subjectTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.data = [[Datamodel alloc] init];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    
    NSInteger a  = 0;
    
    if (section == 0){
        a = self.data.firstsemestermodule.count;
    }
    
  else if (section == 1) {
        
        a = self.data.secondsemestermodule.count;
  }
    
    return a;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"proto" forIndexPath:indexPath];
    
    // Configure the cell...
    
    if (indexPath.section == 0){
        
        module *temp = [self.data.firstsemestermodule objectAtIndex:indexPath.row];
        cell.textLabel.text = temp.Subject;
        cell.detailTextLabel.text = temp.semester;
    }
    
    else if (indexPath.section == 1){
        
        module *temp = [self.data.secondsemestermodule objectAtIndex:indexPath.row];
        cell.textLabel.text = temp.Subject;
        cell.detailTextLabel.text = temp.semester;
    }
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    NSString *title = @"";
    
    if (section == 0)
        
        title  = @"Semester One Modules";
    
    else if (section ==1){
        
        title = @"Semester Two Modules";
    }
    return title;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
