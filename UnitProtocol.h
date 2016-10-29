//
//  UnitProtocol.h
//  HWProtocolGame
//
//  Created by Хариго on 28.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol UnitProtocol <NSObject>
@property (nonatomic, assign) NSInteger strength;
@property (nonatomic, assign) NSInteger armor;
@property (nonatomic, assign) NSInteger health;

-(void) battleWithEnemy : (id <UnitProtocol>)enemy withCompletionBlock: (void (^)(NSInteger health,NSInteger armor)) completionBlock;

@end
