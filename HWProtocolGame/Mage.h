//
//  Mage.h
//  HWProtocolGame
//
//  Created by Хариго on 28.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UnitProtocol.h"

@interface Mage : NSObject <UnitProtocol>

@property (nonatomic, assign) NSInteger strength;
@property (nonatomic, assign) NSInteger health;
@property (nonatomic, assign) NSInteger armor;

- (instancetype)initWithHealth: (NSInteger)health armor : (NSInteger) armor strength : (NSInteger) strength;

@end
