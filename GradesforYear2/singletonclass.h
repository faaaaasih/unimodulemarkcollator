//
//  singletonclass.h
//  GradesforYear2
//
//  Created by Fasih Qureshi on 10/12/2017.
//
//

#import <Foundation/Foundation.h>

@interface singletonclass : NSObject


@property (nonatomic, strong) NSString *typeofmodule;
@property int percenta;

+(singletonclass*) sharedinstance;
@end
