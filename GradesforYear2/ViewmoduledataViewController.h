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
<UITextFieldDelegate, UIGestureRecognizerDelegate>



@property (weak, nonatomic) IBOutlet TOMSMorphingLabel *modulelabel;
@property (weak, nonatomic) IBOutlet TOMSMorphingLabel *Semlabel;
@property (nonatomic, strong) module *mod;

@property (weak, nonatomic) IBOutlet RQShineLabel *markper;
@property (weak, nonatomic) IBOutlet RQShineLabel *perofmod;
@property (weak, nonatomic) IBOutlet UITextField *markpertex;
@property (weak, nonatomic) IBOutlet UITextField *perofmodtex;
@property (weak, nonatomic) IBOutlet UITextField *typeoftesttex;
@property (weak, nonatomic) IBOutlet RQShineLabel *typeoftestlabel;


@property (strong, nonatomic) IBOutlet UIPanGestureRecognizer *panview;

@property (nonatomic, strong) singletonclass *ref;


@property int mark;
@property int per;

@property (nonatomic,strong) NSString *typeoftestmod;

- (IBAction)panvieaction:(UIPanGestureRecognizer *)sender;


@end
