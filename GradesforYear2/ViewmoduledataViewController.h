//
//  ViewmoduledataViewController.h
//  GradesforYear2
//
//  Created by Fasih Qureshi on 09/12/2017.
//
//

#import <UIKit/UIKit.h>
#import "TOMSMorphingLabel.h"
#import "module.h"
#import "singletonclass.h"
#import "RQShineLabel.h"

@interface ViewmoduledataViewController : UIViewController
<UITextFieldDelegate>


@property (weak, nonatomic) IBOutlet TOMSMorphingLabel *modulelabel;
@property (weak, nonatomic) IBOutlet TOMSMorphingLabel *Semlabel;
@property (nonatomic, strong) module *mod;

@property (weak, nonatomic) IBOutlet RQShineLabel *markper;
@property (weak, nonatomic) IBOutlet RQShineLabel *perofmod;

@end
