//
//  Mag.m
//  HWProtocolGame
//
//  Created by Rustam N on 28.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import "Mag.h"


@implementation Mag
@synthesize health = _health;
@synthesize armor = _armor;


- (instancetype)initWithHealth:(int)health andArmor:(int)armor
{
    self = [super init];
    if(self){
        _health = health;
        _armor = armor;
    }
    return self;
}

-(int)getHealth{
    return _health;
}

-(void)blow:(id)Character feedBackBlock:(void(^)(NSString *feedback))feedbackBloc endBlock:(void(^)(NSString *message))message{
    _abilities = @"";
    
    if([Character isKindOfClass:[Mag class]]){
        _damage = 60 + arc4random() %20;
        if(arc4random() %2 == 1){
            _damage*= 0.1;
            _abilities = @"урон уменьшин";
        }
        _health-= _damage;
    _feedback = [NSString stringWithFormat:@"Маг -> Маг урона нанесено %d, %@", _damage, _abilities];
    }
    else if([Character isKindOfClass:[Warrior class]]){
         _damage = 30 + arc4random() %30;
        if(arc4random() %2 == 1){
            _damage*= 1.5;
            _abilities = @"урон увеличин";
        }
        if(arc4random() %2 == 1){
            _damage*= 0.1;
            _abilities =  [NSString stringWithFormat: @"урон уменьшин %@", _abilities];
        }
        _health-= _damage;
    _feedback = [NSString stringWithFormat:@"Воин -> Маг урона нанесено %d, %@", _damage,  _abilities];
    }
    else if([Character isKindOfClass:[Archer class]]){
        _damage = 30 + arc4random() %30;
        if(arc4random() %2 == 1){
            _damage*= 0.1;
            _abilities = @"урон уменьшин";
        }
        _health-= _damage;
        _feedback = [NSString stringWithFormat:@"Лучник -> Маг урона нанесено %d, %@", _damage, _abilities];

    }
    
    if(_health > 0){
        feedbackBloc(_feedback);
    }
    else{
        _health = 0;
         message(@"Кто-то умер");
    }
    NSLog(@"%d", _health);
}



@end
