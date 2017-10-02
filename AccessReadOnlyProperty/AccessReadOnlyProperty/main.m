//
//  main.m
//  AccessReadOnlyProperty
//
//  Created by Anil Upadhyay on 12/09/17.
//  Copyright © 2017 Anil Upadhyay. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "AppController.h"
int main(int argc, const char * argv[]) {
    AppController *app = [[AppController alloc]init];
    [app setValue:[NSNumber numberWithInt:123] forKey:@"figo"];
    NSLog(@"%@",app.figo);
    return NSApplicationMain(argc, argv);
}
