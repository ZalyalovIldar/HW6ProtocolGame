//
//  Warrior.m
//  HWProtocolGame
//
//  Created by Rustam N on 28.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import "Warrior.h"

@implementation Warrior
@synthesize health = _health;
@synthesize armor = _armor;



- (instancetype)initWithHealth:(int)health andArmor:(int)armor{
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

-(int)berserc:(int)damage{
    return damage * 1.5;
}
-(void)blow:(id)Character feedBackBlock:(void(^)(NSString *feedback))feedbackBloc endBlock:(void(^)(NSString *message))message{
    
    
    if([Character isKindOfClass:[Mag class]]){
        _damage = 60 + arc4random() %20;

        
        _health-= _damage;
        _feedback = [NSString stringWithFormat:@"Маг -> Воин урона нанесено %d", _damage];
    }
    else if([Character isKindOfClass:[Warrior class]]){
        _damage = 30 + arc4random() %30;
   
        _health-= _damage;
        _feedback = [NSString stringWithFormat:@"Воин -> Воин урона нанесено %d", _damage];
    }
    else if([Character isKindOfClass:[Archer class]]){
        _damage = 30 + arc4random() %30;

        _health-= _damage;
        _feedback = [NSString stringWithFormat:@"Лучник -> Воин урона нанесено %d", _damage];
        
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

