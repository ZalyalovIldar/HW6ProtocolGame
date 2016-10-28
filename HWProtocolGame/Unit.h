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
@property(nonatomic)int health;
@property(nonatomic)int armor;
-(void)attackedBy:(id)Unit;
@optional
@property(nonatomic)BOOL sheald;
@property(nonatomic)BOOL animal;
@property(nonatomic)BOOL totem;

@end
