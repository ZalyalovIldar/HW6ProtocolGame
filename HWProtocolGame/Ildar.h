//
//  Ildar.h
//  HWProtocolGame
//
//  Created by Ильяс Ихсанов on 26.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Unit.h"

@interface Ildar : NSObject <Unit>

- (instancetype)initIldarWithParametr;
- (instancetype)initLenarWithOptionalParametr:(NSString *)name;


@end
