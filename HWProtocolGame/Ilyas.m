//
//  Ilyas.m
//  HWProtocolGame
//
//  Created by Ильяс Ихсанов on 27.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import "Ilyas.h"
#import "Lenar.h"
#import "Ildar.h"

@implementation Ilyas

@synthesize name = _name;
@synthesize damage = _damage;
@synthesize skills = _skills;
@synthesize health = _health;
@synthesize armor = _armor;
@synthesize age = _age;
@synthesize codeMaster = _codeMaster;

- (instancetype)initIlyasWithParametr
{
    self = [super init];
    if (self) {
        _name = @"Ilyas admin";
        _damage = 10;
        _skills = 50;
        _age = 19;
        _armor = 120;
        _health = 100;
    }
    return self;
}

- (instancetype)initLenarWithOptionalParametr:(NSString *)name
{
    self = [super init];
    if (self) {
        _name = name;
        _damage = 10;
        _skills = 22;
        _age = 19;
        _armor = 120;
        _health = 100;
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
