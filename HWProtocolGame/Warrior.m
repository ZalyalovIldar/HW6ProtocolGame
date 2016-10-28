//
//  Warrior.m
//  HWProtocolGame
//
//  Created by Наталья on 24.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import "Warrior.h"

@implementation Warrior

@synthesize health = _health;
@synthesize armor = _armor;
@synthesize strength = _strength;

- (instancetype)initWithHealth:(NSInteger)health armor:(NSInteger)armor strength:(NSInteger)strength {
    self = [super init];
    if (self) {
        _health = health;
        _armor = armor;
        _strength = strength;
        
    }
    return self;
}

- (void)fight:(id <UnitProtocol>)enemy andChangeParametersBlock:(void (^)(id<UnitProtocol> enemy, kUnitStatus status))changeParametersBlock
{
    if (![enemy respondsToSelector:@selector(fight:andChangeParametersBlock:)]){
        return;
    }
    enemy.health = (enemy.health + 0.05 * enemy.armor) - self.strength;
    if (enemy.health <= 0)
    {
        changeParametersBlock(enemy, kUnitStatusDead);
        return;
    }
    changeParametersBlock(enemy,kUnitStatusAlive);
    
    
}


- (void)restoreHealt:(id)health
{
    
}

@end
