//
//  Mag.h
//  HWProtocolGame
//
//  Created by Rustam N on 28.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"
#import "Warrior.h"
#import "Archer.h"

@interface Mag : NSObject<Character>
@property (nonatomic) int damage;
@property (strong, nonatomic) NSString *feedback;
@property (strong, nonatomic) NSString *abilities;

- (int)getHealth;
- (instancetype)initWithHealth:(int)health andArmor:(int)armor;
-(void)blow:(id)Character feedBackBlock:(void(^)(NSString *feedback))feedbackBloc endBlock:(void(^)(NSString *message))message;
@end
