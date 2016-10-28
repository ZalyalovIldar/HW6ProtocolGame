//
//  Unit.h
//  HWProtocolGame
//
//  Created by Наталья on 24.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, kUnitStatus) {
    kUnitStatusAlive = 0,
    kUnitStatusDead  = 1,
};

@protocol UnitProtocol<NSObject>

@property(nonatomic, assign) NSInteger health;
@property(nonatomic, assign) NSInteger armor;
@property(nonatomic, assign) NSInteger strength;

@required
- (void)fight:(id <UnitProtocol>)enemy andChangeParametersBlock:(void (^)(id<UnitProtocol> enemy, kUnitStatus status))changeParametersBlock;
//- (void)restoreHealt:(id)health;
@end
