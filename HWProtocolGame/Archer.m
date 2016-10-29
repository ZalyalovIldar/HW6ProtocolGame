//
//  Archer.m
//  HWProtocolGame
//
//  Created by Хариго on 28.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import "Archer.h"
#import "Mage.h"
#import "Warrior.h"
#import "ViewController.h"


@implementation Archer
- (instancetype)initWithHealth: (NSInteger)health armor : (NSInteger) armor strength : (NSInteger) strength
{
        self = [super init];
        if (self) {
                _health = health;
                _armor = armor;
                _strength = strength;
            }
        return self;
    }

-(void) battleWithEnemy : (id <UnitProtocol>)enemy withCompletionBlock: (void (^)(NSInteger health, NSInteger armor)) completionBlock
{
        if (enemy.armor > 0) {
            enemy.armor = enemy.armor - self.strength/2;
            enemy.health = enemy.health - self.strength/2;
            if (enemy.armor < 0) enemy.armor = 0;
        } else {
            enemy.health = enemy.health - self.strength;
        }
        completionBlock(enemy.health,enemy.armor);
    }

@end

