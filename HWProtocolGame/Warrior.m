//
//  Warrior.m
//  HWProtocolGame
//
//  Created by Чингиз Халиков on 28.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import "Warrior.h"

@implementation Warrior

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
