//
//  Warrior.h
//  HWProtocolGame
//
//  Created by Ленар on 24.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Unit.h"

@interface Warrior : NSObject <Unit>

-(instancetype)init;
-(instancetype)initWithSheld;

@end
