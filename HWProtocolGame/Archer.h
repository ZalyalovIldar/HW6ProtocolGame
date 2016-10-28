//
//  Archer.h
//  HWProtocolGame
//
//  Created by Наталья on 24.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UnitProtocol.h"

@interface Archer : NSObject <UnitProtocol>

@property (nonatomic, assign) NSInteger numberOfArrows;
- (instancetype)initWithHealth:(NSInteger)health armor:(NSInteger)armor strength:(NSInteger)strength;

@end
