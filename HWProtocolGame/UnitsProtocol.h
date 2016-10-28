//
//  UntisProtocol.h
//  HWProtocolGame
//
//  Created by Чингиз Халиков on 28.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol UnitsProtocol <NSObject>
@property (nonatomic, assign) NSInteger strenght;
@property (nonatomic, assign) NSInteger armor;
@property (nonatomic, assign) NSInteger health;

-(void) battleWithEnemy : (id <UnitsProtocol>)enemy withCompletionBlock: (void (^)(NSInteger health)) completionBlock;

@end
