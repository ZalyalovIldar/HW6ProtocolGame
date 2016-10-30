//
//  Archer.m
//  HWProtocolGame
//
//  Created by Rustam N on 28.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import "Archer.h"

@implementation Archer

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
-(void)blow:(id)Character feedBackBlock:(void(^)(NSString *feedback))feedbackBloc endBlock:(void(^)(NSString *message))message{
    
    
    if([Character isKindOfClass:[Mag class]]){
        _damage = 60 + arc4random() %20;
        if(arc4random() %2 == 1)
            _damage = 0;
        _health-= _damage;
        _feedback = [NSString stringWithFormat:@"Маг -> Лучник урона нанесено %d", _damage];
    }
    else if([Character isKindOfClass:[Warrior class]]){
        _damage = 30 + arc4random() %30;
        
        if(arc4random() %2 == 1)
            _damage*= 1.5;
        if(arc4random() %2 == 1)
            _damage = 0;
        _health-= _damage;
        _feedback = [NSString stringWithFormat:@"Воин -> Лучник урона нанесено %d", _damage];
    }
    else if([Character isKindOfClass:[Archer class]]){
        _damage = 30 + arc4random() %30;
        if(arc4random() %2 == 1)
            _damage = 0;
        _health-= _damage;
        _feedback = [NSString stringWithFormat:@"Лучник -> Лучник урона нанесено %d", _damage];
        
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
