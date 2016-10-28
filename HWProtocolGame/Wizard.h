//
//  Wizard.h
//  HWProtocolGame
//
//  Created by Наталья on 24.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UnitProtocol.h"

@interface Wizard : NSObject <UnitProtocol>
- (instancetype)initWithHealth:(NSInteger)health armor:(NSInteger)armor strength:(NSInteger)strength;


@end
