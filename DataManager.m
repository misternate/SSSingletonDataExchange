//
//  DataManager.m
//  SingletonExample
//
//  Created by Nate Edwards on 3/16/15.
//  Copyright (c) 2015 misternate. All rights reserved.
//

#import "DataManager.h"

@implementation DataManager

//Ensures the singleton is thread-safe and the block below is only called once during the lifetime of the app.
static dispatch_once_t pred;
static DataManager *dataManagerInstance;

+(DataManager *)getInstance{
    //Let's use that predicate
    dispatch_once(&pred, ^{
         dataManagerInstance = [[DataManager alloc] init];
    });
    
    return dataManagerInstance;
}

-(void)setInfo:(NSString *)parameter{
    dummyText = parameter;
}

-(NSString *)getInfo{
    return dummyText;
}

@end
