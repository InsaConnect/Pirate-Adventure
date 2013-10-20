//
//  CCFactory.m
//  Piarate Adventure
//
//  Created by Daniel Lee on 10/14/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import "CCFactory.h"
#import "CCTile.h"

@implementation CCFactory

-(NSArray *)tiles
{
    CCTile *tile1 = [[CCTile alloc] init];
    tile1.story = @"Captain, we need a fearless leader, such as yourself to undertake a voyage. You just stop the evil pirate Boss. Would like a blunted sword to get started?";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    CCWeapon *bluntedSword = [[CCWeapon alloc] init];
    bluntedSword.name = @"Blunted sword";
    bluntedSword.damage = 12;
    tile1.weapon = bluntedSword;
    tile1.actionButtonName = @"Take the sword.";
    
    CCTile *tile2 = [[CCTile alloc] init];
    tile2.story = @"You have come across an armoy. Would you like to upgrade your armor to steel armor?";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    CCArmor *steelArmor = [[CCArmor alloc] init];
    steelArmor.name = @"Steel Armor";
    steelArmor.health = 8;
    tile2.armor = steelArmor;
    tile1.actionButtonName = @"Take armor.";
    
    
    CCTile *tile3 = [[CCTile alloc] init];
    tile3.story = @"A mysterious dock appears on the horizon. Should we stop and ask for directions?";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.healthEffect = 12;
    tile3.actionButtonName = @"Stop at the dock.";
    
    
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    
    CCTile *tile4 = [[CCTile alloc] init];
    tile4.story = @"You have found a parrot. This can be used in your armor slot. Parrots are a great defender and are fiercly loyal to their captain!";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    CCArmor *parrotArmor = [[CCArmor alloc] init];
    parrotArmor.health = 20;
    parrotArmor.name = @"Parrot";
    tile4.actionButtonName = @"Adopt the parrot";
    
    
    CCTile *tile5 = [[CCTile alloc] init];
    tile5.story = @"You have a stumbled upon a cache of pirate weapons. Would you like to upgrade to a pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    CCWeapon *pistolWeapon = [[CCWeapon alloc] init];
    pistolWeapon.name = @"Pistol";
    pistolWeapon.damage = 17;
    tile5.actionButtonName = @"Use pistol.";
    
    
    CCTile *tile6 = [[CCTile alloc] init];
    tile6.story = @"You have been captured by pirates and are ordered to walk the plank";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePplank.jpg"];
    tile6.healthEffect = -22;
    tile6.actionButtonName = @"Show no fear!";
    
    
    
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    CCTile *tile7 = [[CCTile alloc] init];
    tile7.story = @"You have sighted a pirate battle off the coast.  Should we intervene?";
    tile7.backgroundImage = [UIImage imageNamed:@"PriateShipBattle.jpeg"];
    tile7.healthEffect = 8;
    tile7.healthEffect = @"Fight those scum!";
    
    
    CCTile *tile8 = [[CCTile alloc] init];
    tile8.story = @"The legend of the deep. The mighty kraken appears";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile8.healthEffect = -46;
    tile8.actionButtonName = @"Abandon ship!";
    
    
    
    
    CCTile *tile9 = [[CCTile alloc] init];
    tile9.story = @"You have stumbled upon a hidden cave of pirate treasure";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile9.healthEffect = 20;
    tile9.actionButtonName = @"Take treasure.";
    
    
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    
    CCTile *tile10 = [[CCTile alloc] init];
    tile10.story = @"A group of pirates attempts to board your ship.";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile10.healthEffect = -15;
    tile10.actionButtonName = @"Repel the invaders.";
                              
                              
    CCTile *tile11 = [[CCTile alloc] init];
    tile11.story = @"In the deep of the sea, many things live and many things can be found. Will the fortune bring help or ruin?";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile11.healthEffect = -7;
    tile11.actionButtonName = @"Swim deeper";
    
    
    CCTile *tile12 = [[CCTile alloc] init];
    tile12.story = @"Your final faceoff with the fearsome pirate boss!";
    tile12.backgroundImage=[UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.healthEffect = -15;
    tile12.actionButtonName = @"Fight!";
    
    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
                      
return tiles;
}
-(CCCharacter *)character;
{
    CCCharacter *character = [[CCCharacter alloc] init];
    character.health = 100;
    CCArmor *armor = [[CCArmor alloc] init];
    character.armor = armor;
    armor.name = @"Cloak";
    armor.health = 5;
    
    
    CCWeapon *weapon = [[CCWeapon alloc] init];
    weapon.name = @"Fists";
    weapon.damage = 10;
    character.weapon = weapon;
    
    return character;
    
}
-(CCBoss *)boss;
{
    CCBoss *boss = [[CCBoss alloc] init];
    boss.health = 65;
    return boss;
    
}
                      

@end
