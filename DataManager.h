//
//  DataManager.h
//  SingletonExample
//
//  Created by Nate Edwards on 3/16/15.
//  Copyright (c) 2015 misternate. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataManager : NSObject{
    NSString *dummyText;
}

+(DataManager *) getInstance;

-(void)setInfo:(NSString *)parameter;
-(NSString *)getInfo;

@end
