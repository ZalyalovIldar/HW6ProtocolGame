//
//  Ildar.m
//  HWProtocolGame
//
//  Created by Ильяс Ихсанов on 26.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import "Ildar.h"
#import "Ilyas.h"
#import "Lenar.h"

@implementation Ildar

@synthesize name = _name;
@synthesize damage = _damage;
@synthesize skills = _skills;
@synthesize health = _health;
@synthesize armor = _armor;
@synthesize age = _age;
@synthesize codeMaster = _codeMaster;

- (instancetype)initIldarWithParametr
{
    self = [super init];
    if (self) {
        _name = @"Ildar progMan";
        _damage = 4;
        _skills = 60;
        _age = 20;
        _armor = 100;
        _health = 100;
        _codeMaster = true; // +10% к урону
    }
    return self;
}

- (instancetype)initLenarWithOptionalParametr:(NSString *)name
{
    self = [super init];
    if (self) {
        _name = name;
        _damage = 4;
        _skills = 23;
        _age = 20;
        _armor = 100;
        _health = 100;
        _codeMaster = true; // +10% к урону
    }
    return self;
}

-(void)attackTo:(id)unit{
    if (([unit isKindOfClass:[Lenar class]] || [unit isKindOfClass:[Ildar class]] || [unit isKindOfClass:[Ilyas class]])) {
    if (_armor > 0) {
        _armor -= _skills;
        if (_armor < 0) {
            _armor = 0;
        }
    }else{
        if (_health > 0) {
            _health -= _damage;
        }else{
            if (_health <= 0) {
                _health = 0;
            }
        }
    }
    }
}

@end
