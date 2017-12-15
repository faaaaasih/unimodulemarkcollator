//
//  singletonclass.h
//  GradesforYear2
//
//  Created by Fasih Qureshi on 10/12/2017.
//
//

#import <Foundation/Foundation.h>

@interface singletonclass : NSObject


@property (nonatomic, strong) NSMutableArray *typeoftestarr;
@property (nonatomic, strong) NSString *typeoftest;
@property int mark;
@property int percentofmode;
@property (nonatomic, strong) NSString *sem;
@property int index;
@property (nonatomic, strong) NSMutableArray *arraym;
@property (nonatomic, strong) NSMutableArray *arrayper;

+(singletonclass*) sharedinstance;
@end
