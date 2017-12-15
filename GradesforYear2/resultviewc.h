//
//  resultviewc.h
//  GradesforYear2
//
//  Created by Fasih Qureshi on 13/12/2017.
//
//

#import <UIKit/UIKit.h>
#import "singletonclass.h"
#import "module.h"
#import "Datamodel.h"

@interface resultviewc : UIViewController  <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic,strong) singletonclass *passedonref;
@property (nonatomic, strong) NSMutableArray *newarrayofmark;
@property (nonatomic,strong) NSMutableArray *arrayofpercen;
@property (nonatomic, strong) NSMutableArray *arrayoftest;
@property int markm;
@property int perce;
@property (nonatomic, strong) NSString *typetestpas;

@property (weak, nonatomic) IBOutlet UITableView *tablecellforresult;

@end
