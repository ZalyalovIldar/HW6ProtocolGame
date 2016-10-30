//
//  Character.h
//  HWProtocolGame
//
//  Created by Rustam N on 28.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Character <NSObject>
@required
@property(nonatomic) int health;
@property(nonatomic) int armor;
@property (nonatomic) NSString *feedback;
- (int)getHealth;
- (void)blow:(id)Character feedBackBlock:(void(^)(NSString *feedback))feedbackBloc endBlock:(void(^)(NSString *message))message;



@optional
-(int)berserc:(int)damage;
@end
