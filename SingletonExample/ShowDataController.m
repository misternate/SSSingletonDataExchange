//
//  ShowDataController.m
//  SingletonExample
//
//  Created by Nate Edwards on 3/16/15.
//  Copyright (c) 2015 misternate. All rights reserved.
//

#import "ShowDataController.h"

@implementation ShowDataController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    DataManager *dataManagerSingleton = [DataManager getInstance];
    if([dataManagerSingleton getInfo] == nil){
        self.showDataTextView.text = @"No data set!";
    }else{
        self.showDataTextView.text = [dataManagerSingleton getInfo];

    }
}

@end
