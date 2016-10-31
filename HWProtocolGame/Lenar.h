//
//  Lenar.h
//  HWProtocolGame
//
//  Created by Ильяс Ихсанов on 27.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Unit.h"

@interface Lenar : NSObject <Unit>

- (instancetype)initLenarWithParametr;
- (instancetype)initLenarWithOptionalParametr:(NSString *)name;

@end
