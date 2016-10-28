//
//  Warrior.h
//  HWProtocolGame
//
//  Created by Чингиз Халиков on 28.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "UnitsProtocol.h"

@interface Archer : NSObject <UnitsProtocol>

@property (nonatomic, assign) NSInteger strenght;
@property (nonatomic, assign) NSInteger health;
@property (nonatomic, assign) NSInteger armor;

- (instancetype)initWithHealth: (NSInteger)health armor : (NSInteger) armor strenght : (NSInteger) strenght;

@end
