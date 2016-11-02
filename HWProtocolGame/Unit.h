//
//  Unit.h
//  HWProtocolGame
//
//  Created by Ильяс Ихсанов on 27.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Unit <NSObject>

@property (strong, nonatomic, readonly)NSString *name;
@property (nonatomic) int age;
@property (nonatomic, readonly)int damage;
@property (nonatomic, readonly)int skills;
@property (nonatomic) int health;
@property (nonatomic) int armor;
-(void)attackTo:(id)unit;



@optional
@property (nonatomic) BOOL codeMaster; //On or off




@end
