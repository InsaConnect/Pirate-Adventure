//
//  CCFactory.h
//  Piarate Adventure
//
//  Created by Daniel Lee on 10/14/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCCharacter.h"
#import "CCBoss.h"

@interface CCFactory : NSObject


-(NSArray *)tiles;
-(CCCharacter *)character;
-(CCBoss *)boss;
@end
