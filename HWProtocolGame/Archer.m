//
//  Warrior.h
//  HWProtocolGame
//
//  Created by Чингиз Халиков on 28.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import "Archer.h"
#import "Wizard.h"
#import "Warrior.h"
#import "ViewController.h"


@implementation Archer
- (instancetype)initWithHealth: (NSInteger)health armor : (NSInteger) armor strenght : (NSInteger) strenght
{
    self = [super init];
    if (self) {
        _health = health;
        _armor = armor;
        _strenght = strenght;
    }
    return self;
}

-(void) battleWithEnemy : (id <UnitsProtocol>)enemy withCompletionBlock: (void (^)(NSInteger health)) completionBlock{
    enemy.health = enemy.health - self.strenght;
    completionBlock(enemy.health);
}

    @end

