//
//  SetDataController.m
//  SingletonExample
//
//  Created by Nate Edwards on 3/16/15.
//  Copyright (c) 2015 misternate. All rights reserved.
//

#import "SetDataController.h"
#import "ShowDataController.h"

@interface SetDataController ()

@end

@implementation SetDataController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"segueToShowData"]){
        
    }else if([segue.identifier isEqualToString:@"segueIndentifier1"]){
        
    }else{
        NSLog(@"I've got nowhere to segue to!");
    }
    
}

- (IBAction)setInfo:(id)sender {
    DataManager *dataManagerSingleton  = [DataManager getInstance];
    if([self.setInfoTextField.text length] == 0){
        UIAlertView *noTextSetAlert = [[UIAlertView alloc] initWithTitle:@"Whoa!" message:@"You didn't type anything!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [noTextSetAlert show];
    }else{
        [dataManagerSingleton setInfo:self.setInfoTextField.text];
    }
}

- (IBAction)logInfo:(id)sender {
    DataManager *dataManagerSingleton = [DataManager getInstance];
    NSLog(@"Retrieved Data: %@", [dataManagerSingleton getInfo]);
}

-(IBAction)prepareForUnwindFromShowData:(UIStoryboardSegue *)segue{
    NSLog(@"and we're back!");
}

@end
