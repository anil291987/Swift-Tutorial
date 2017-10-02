//
//  AppController.m
//  AccessReadOnlyProperty
//
//  Created by Anil Upadhyay on 12/09/17.
//  Copyright © 2017 Anil Upadhyay. All rights reserved.
//

#import "AppController.h"

@interface AppController (){
    
}
@property(readwrite, assign)NSNumber *figo;
@end
@implementation AppController
@synthesize figo;
- (id)init
{
    if (self=[super init]) {
    }
    return self;
}
@end
