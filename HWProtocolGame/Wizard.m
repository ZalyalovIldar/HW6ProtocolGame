//
//  Wizard.m
//  HWProtocolGame
//
//  Created by Ленар on 24.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import "Wizard.h"
#import "Warrior.h"
#import "Archer.h"

@implementation Wizard
@synthesize name = _name;
@synthesize armor=_armor;
@synthesize health = _health;
@synthesize attack = _attack;

-(instancetype)init{
    self = [super init];
    if (self) {
        _armor = 20;
        _name = @"Маг";
        _health = 100;
        _attack = 22;
    }
    return self;
}

-(instancetype)initWithTotem:(int)bonusTotem{
    self=[super init];
    if(self){
        _name = @"Маг";
        _armor = 20+bonusTotem;
        _health = 100;
        _attack = 22;
    }
    return self;
}

-(void)attackedBy:(id)Unit{
    if ([Unit isKindOfClass:[Archer class]]||[Unit isKindOfClass:[Wizard class]]||[Unit isKindOfClass:[Warrior class]]) {
        int unitDamage = [Unit attack];
        int damage = (unitDamage-4)+arc4random()%(unitDamage-(unitDamage-4));
        if(_armor<damage){
            if (_armor==0) {
                _health = _health - damage;
            }
            else {
                damage = damage - _armor;
                _armor = 0;
                _health = _health - damage;
            }
        }else{
            _armor = _armor - damage;
        }
    }
    else{
        NSLog(@"ERROR : Incorrect object");
    }
}

@end
