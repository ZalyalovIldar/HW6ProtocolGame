//
//  Unit.h
//  HWProtocolGame
//
//  Created by Ленар on 24.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Unit <NSObject>

@required
-(instancetype)init;
@property(nonatomic)int health;
@property(nonatomic)int attack;
@property(nonatomic)int armor;
@property(strong, nonatomic)NSString *name;
-(void)attackedBy:(id)Unit;
@optional
-(instancetype)initWithTotem:(int)bonusTotem;
-(instancetype)initWithSheld:(int)bonusSheald;
-(instancetype)initWithAnimal:(int)bonusAnimal;
@end
