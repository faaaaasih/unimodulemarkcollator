//
//  singletonclass.m
//  GradesforYear2
//
//  Created by Fasih Qureshi on 10/12/2017.
//
//

#import "singletonclass.h"

@implementation singletonclass

@synthesize   mark, percentofmode, sem, index, arraym,arrayper,typeoftestarr ,typeoftest;

static singletonclass *_sharedinstance;

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.arraym = [NSMutableArray array];
        self.arrayper = [NSMutableArray array];
        self.typeoftestarr = [NSMutableArray array];
        
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
