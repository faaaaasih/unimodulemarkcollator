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
#import "JVFloatLabeledTextField.h"
#import "JVFloatLabeledTextView.h"

@interface ViewmoduledataViewController : UIViewController
@property (weak, nonatomic) IBOutlet TOMSMorphingLabel *modulelabel;
@property (weak, nonatomic) IBOutlet TOMSMorphingLabel *Semlabel;
@property (nonatomic, strong) module *mod;


@end
