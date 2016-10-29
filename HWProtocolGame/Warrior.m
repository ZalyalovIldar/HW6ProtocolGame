//
//  Warrior.m
//  HWProtocolGame
//
//  Created by Ленар on 24.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import "Warrior.h"
#import "Wizard.h"
#import "Archer.h"

@implementation Warrior

@synthesize armor=_armor;
@synthesize health = _health;
@synthesize attack = _attack;
@synthesize name = _name;

-(instancetype)init{
    self = [super init];
    if (self) {
        _name = @"Воин";
        _armor = 100;
        _health = 100;
        _attack = 10;
    }
    return self;
}

-(instancetype)initWithSheld:(int)bonusSheald{
    self=[super init];
    if(self){
        _name = @"Воин";
        _armor = 100+bonusSheald;
        _health = 100;
        _attack = 10;
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
