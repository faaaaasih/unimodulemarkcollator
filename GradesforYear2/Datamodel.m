//
//  Datamodel.m
//  GradesforYear2
//
//  Created by Fasih Qureshi on 09/12/2017.
//
//

#import "Datamodel.h"

@implementation Datamodel
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.firstsemestermodule = [NSMutableArray array];
        module *sender = [[module alloc] init];
        sender.Subject = @"Mobile Applications Project";
        sender.semester = @"Semester 1";
        
        self.firstsemestermodule = [NSMutableArray array];
        module *sender1 = [[module alloc] init];
        sender1.Subject = @"Power Electronics";
        sender1.semester = @"Semester 1";
        
        self.firstsemestermodule = [NSMutableArray array];
        module *sender3 = [[module alloc] init];
        sender3.Subject = @"Electronic Circuit Design";
        sender3.semester = @"Semester 1";
        
        self.firstsemestermodule = [NSMutableArray array];
        module *sender4= [[module alloc] init];
        sender4.Subject = @"Transistors and Optoelectronics";
        sender4.semester = @"Semester 1";
        
        self.firstsemestermodule = [NSMutableArray array];
        module *sender5 = [[module alloc] init];
        sender5.Subject = @"Communications theory";
        sender5.semester = @"Semester 1";
        
        self.secondsemestermodule = [NSMutableArray array];
        module *sender6 = [[module alloc] init];
        sender6.Subject = @"Embedded Systems";
        sender6.semester = @"Semester 2";
        
        self.secondsemestermodule = [NSMutableArray array];
        module *sender7 = [[module alloc] init];
        sender7.Subject = @"High Frequency Devices";
        sender7.semester = @"Semester 2";
        
        self.secondsemestermodule = [NSMutableArray array];
        module *sender8 = [[module alloc] init];
        sender8.Subject = @"Transistors and Optoelectronic Devices";
        sender8.semester = @"Semester 2";
        
        
        self.secondsemestermodule = [NSMutableArray array];
        module *sender9 = [[module alloc] init];
        sender9.Subject = @"Communications theory";
        sender9.semester = @"Semester 2";
        
        
        [self.firstsemestermodule addObject:sender];
        [self.firstsemestermodule addObject:sender1];
        [self.firstsemestermodule addObject:sender3];
        [self.firstsemestermodule addObject:sender4];
        [self.firstsemestermodule addObject:sender5];
        
        [self.secondsemestermodule addObject:sender6];
        [self.secondsemestermodule addObject:sender7];
        [self.secondsemestermodule addObject:sender8];
        [self.secondsemestermodule addObject:sender9];
        
        
    }
    return self;
}
@end
