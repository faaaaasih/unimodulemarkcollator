//
//  singletonclass.m
//  GradesforYear2
//
//  Created by Fasih Qureshi on 10/12/2017.
//
//

#import "singletonclass.h"

@implementation singletonclass

@synthesize  typeoftest, mark, percentofmode, sem, index, arraym,arrayper;

static singletonclass *_sharedinstance;

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.arraym = [NSMutableArray array];
        self.arrayper = [NSMutableArray array];
        
    }
    return self;
}


+(singletonclass*) sharedinstance{
    
    if (!_sharedinstance){
        
        _sharedinstance = [[singletonclass alloc] init];
    }
    
    return _sharedinstance;
}



@end
