//
//  BattleVC.m
//  HWProtocolGame
//
//  Created by Ленар on 25.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import "BattleVC.h"
#import "Wizard.h"
#import "Warrior.h"
#import "Archer.h"
#import "CreatUnitVC.h"

@interface BattleVC ()

@end

@implementation BattleVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)raidActionButton:(id)sender {
    NSString *message = [[NSString alloc]init];
    NSString *winMessage = [[NSString alloc]init];
    NSString *loseMessage = [[NSString alloc]init];
    if(_myArcher!=NULL){
        if(_enemyArcher!=NULL){
            [_enemyArcher attackedBy:_myArcher];
            [_myArcher attackedBy:_enemyArcher];
            message = [NSString stringWithFormat:@"Лучник противника  \n Health:%i Armor:%i \n Mой лучник \n Health:%i Armor:%i",_enemyArcher.health, _enemyArcher.armor, _myArcher.health, _myArcher.armor];
            if(_enemyArcher.health<=0){
                winMessage = @"Твой лучник  убли лучника противника";
            }
            if(_myArcher.health <= 0){
                loseMessage = @"Лучник противника убил твоего лучника";
            }
        }else if(_enemyWarrior!=NULL){
            [_enemyWarrior attackedBy:_myArcher];
            [_myArcher attackedBy:_enemyWarrior];
            message = [NSString stringWithFormat:@"Воин противника \n Health:%i Armor:%i \n Мой лучник \n Health:%i Armor:%i",_enemyWarrior.health, _enemyWarrior.armor, _myArcher.health, _myArcher.armor];
            if(_enemyWarrior.health<=0){
                winMessage = @"Твой лучник убил воина противника";
            }
            if(_myArcher.health<=0){
                loseMessage = @"Воин противника убил твого лучника";
            }
        }else if(_enemyWizard!=NULL){
            [_enemyWizard attackedBy:_myArcher];
            [_myArcher attackedBy:_enemyWizard];
            message = [NSString stringWithFormat:@"Маг противника \n Health:%i Armor:%i \n Мой лучника \n Health:%i Armor:%i",_enemyWizard.health, _enemyWizard.armor, _myArcher.health, _myArcher.armor];
            if(_enemyWizard.health<=0){
                winMessage = @"Твой лучник убил мага противника";
            }
            if(_myArcher.health<=0){
                loseMessage = @"Маг противника убил твоего лучника";
            }
        }
    }
    if(_myWarrior!=NULL){
        if(_enemyArcher!=NULL){
            [_enemyArcher attackedBy:_myWarrior];
            [_myWarrior attackedBy:_enemyArcher];
            message = [NSString stringWithFormat:@"Лучник противника \n Health:%i Armor:%i \n Мой воин \n Health:%i Armor:%i",_enemyArcher.health, _enemyArcher.armor, _myWarrior.health, _myWarrior.armor];
            NSLog(@"воин бъет лучника");
            if(_enemyArcher.health<=0){
                winMessage = @"Твой воин убил лучника противника";
            }
            if(_myWarrior.health<=0){
                loseMessage = @"Воин противника убил твоего лучника";
            }
        }else if(_enemyWarrior!=NULL){
            [_enemyWarrior attackedBy:_myWarrior];
            [_myWarrior attackedBy:_enemyWarrior];
            message = [NSString stringWithFormat:@"Воин противника \n Health:%i Armor:%i \n Мой воин \n Health:%i Armor:%i",_enemyWarrior.health, _enemyWarrior.armor, _myWarrior.health, _myWarrior.armor];
            NSLog(@"воин бъет воин");
            if(_enemyWarrior.health<=0){
                winMessage = @"Твой воин убил воина противника";
            }
            if(_myWarrior.health<=0){
                loseMessage = @"Воин противника убил твоего воина";
            }
        }else if(_enemyWizard!=NULL){
            [_enemyWizard attackedBy:_myWarrior];
            [_myWarrior attackedBy:_enemyWizard];
            message = [NSString stringWithFormat:@"Маг протиника \n Health:%i Armor:%i \n Мой воин \n Health:%i Armor:%i",_enemyWizard.health, _enemyWizard.armor, _myWarrior.health, _myWarrior.armor];
            if(_enemyWizard.health<=0){
                winMessage = @"Твой воин убил мага протиника";
            }
            if(_myWarrior.health<=0){
                loseMessage = @"Маг противника убил твоего воина";
            }
        }
    }
    if(_myWizard!=NULL){
        if(_enemyArcher!=NULL){
            [_enemyArcher attackedBy:_myWizard];
            [_myWizard attackedBy:_enemyArcher];
            message = [NSString stringWithFormat:@"Лучник противника \n Health:%i Armor:%i \n Мой маг \n Health:%i Armor:%i",_enemyArcher.health, _enemyArcher.armor, _myWizard.health, _myWizard.armor];
            NSLog(@"маг бъет лучника");
            if(_enemyArcher.health<=0){
                winMessage = @"Твой маг убил лучника противника";
            }
            if(_myWizard.health<=0){
                loseMessage = @"Лучник противника убил твоего мага";
            }
        }else if(_enemyWarrior!=NULL){
            [_enemyWarrior attackedBy:_myWizard];
            [_myWizard attackedBy:_enemyWarrior];
            message = [NSString stringWithFormat:@"Воин противника \n Health:%i Armor:%i \n Мой маг \n Health:%i Armor:%i",_enemyWarrior.health, _enemyWarrior.armor, _myWizard.health, _myWizard.armor];
            NSLog(@"маг бъет воина");
            if(_enemyWarrior.health<=0){
                winMessage = @"Твой маг убил воина противника";
            }
            if(_myWizard.health<=0){
                loseMessage = @"Воин противника убил твоего мага";
            }
        }else if(_enemyWizard!=NULL){
            [_enemyWizard attackedBy:_myWizard];
            [_myWizard attackedBy:_enemyWizard];
            message = [NSString stringWithFormat:@"Маг противника \n Health:%i Armor:%i \n Мой маг \n Health:%i Armor:%i",_enemyWizard.health, _enemyWizard.armor, _myWizard.health, _myWizard.armor];
            NSLog(@"маг бъет маг");
            if(_enemyWizard.health<=0){
                winMessage = @"Твой маг убил мага противника";
            }
            if(_myWizard.health<=0){
                loseMessage = @"Маг противника убил твоего мага";
            }
        }
    }
    if(![winMessage isEqual:@""]){
        UIAlertController *battleResultAlert = [UIAlertController alertControllerWithTitle:@"Победа" message:winMessage preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"Новая битва" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
            _myArcher = nil;
            _myWizard = nil;
            _myWarrior = nil;
            _enemyArcher = nil;
            _enemyWizard = nil;
            _enemyWarrior = nil;
            [self dismissViewControllerAnimated:YES completion:nil];
        }];
        [battleResultAlert addAction:action];
        [self presentViewController:battleResultAlert animated:YES completion:nil];
    }
    if(![loseMessage isEqual:@""]){
        UIAlertController *battleResultAlert = [UIAlertController alertControllerWithTitle:@"Поражение" message:loseMessage preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"Новая битва" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
            _myArcher = nil;
            _myWizard = nil;
            _myWarrior = nil;
            _enemyArcher = nil;
            _enemyWizard = nil;
            _enemyWarrior = nil;
            [self dismissViewControllerAnimated:YES completion:nil];
        }];
        [battleResultAlert addAction:action];
        [self presentViewController:battleResultAlert animated:YES completion:nil];
    }
    UIAlertController *raidResultAlert = [UIAlertController alertControllerWithTitle:@"Повреждения" message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    [raidResultAlert addAction:action];
    [self presentViewController:raidResultAlert animated:YES completion:nil];
}
- (IBAction)endBattleActionButton:(id)sender {
    _myArcher = nil;
    _myWizard = nil;
    _myWarrior = nil;
    _enemyArcher = nil;
    _enemyWizard = nil;
    _enemyWarrior = nil;
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
