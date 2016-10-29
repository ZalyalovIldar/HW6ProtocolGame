//
//  BattleVC.h
//  HWProtocolGame
//
//  Created by Ленар on 25.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Warrior.h"
#import "Wizard.h"
#import "Archer.h"

@interface BattleVC : UIViewController

@property(strong,nonatomic)id myUnit;
@property(strong, nonatomic)id enemyUnit;

@end
