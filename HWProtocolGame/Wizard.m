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
@synthesize armor=_armor;
@synthesize health = _health;
@synthesize totem = _totem;

-(instancetype)init{
    self = [super init];
    if (self) {
        _armor = 100;
        _health = 100;
        _totem = NO;
    }
    return self;
}

-(instancetype)initWithTotem{
    self=[super init];
    if(self){
        _armor = 100;
        _health = 100;
        _totem = YES;
    }
    return self;
}

-(void)attackedBy:(id)Unit{
    if ([Unit isKindOfClass:[Archer class]]||[Unit isKindOfClass:[Wizard class]]||[Unit isKindOfClass:[Warrior class]]) {
        if (_totem==YES) {
            int damage = 1+arc4random()%4;
            if(_armor<damage){
                if(_armor==0){
                    _health = _health - damage;
                }
                else{
                    damage = damage - _armor;
                    _health = _health - damage;
                }
            }else{
                _armor = _armor - damage;
            }
        }
        else{
            int damage = 5+arc4random()%5;
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
    }
    else{
        NSLog(@"ERROR : Incorrect object");
    }
}

@end
