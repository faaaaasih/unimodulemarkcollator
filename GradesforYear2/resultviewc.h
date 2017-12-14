//
//  resultviewc.h
//  GradesforYear2
//
//  Created by Fasih Qureshi on 13/12/2017.
//
//

#import <UIKit/UIKit.h>
#import "singletonclass.h"

@interface resultviewc : UIViewController

@property (nonatomic,strong) singletonclass *passedonref;
@property (nonatomic, strong) NSMutableArray *newarrayofmark;
@property (nonatomic,strong) NSMutableArray *arrayofpercen;
@property int markm;
@property int perce;


@end
