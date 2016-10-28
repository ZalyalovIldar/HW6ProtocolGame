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

@property(strong, nonatomic) Wizard *myWizard;
@property(strong, nonatomic) Wizard *enemyWizard;
@property(strong, nonatomic) Warrior *myWarrior;
@property(strong, nonatomic) Warrior *enemyWarrior;
@property(strong, nonatomic) Archer *myArcher;
@property(strong, nonatomic) Archer *enemyArcher;

@end
