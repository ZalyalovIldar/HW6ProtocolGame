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
    [_enemyUnit attackedBy:_myUnit];
    [_myUnit attackedBy:_enemyUnit];
    message = [NSString stringWithFormat:@"Противник:%@  \n Health:%i Armor:%i \n Мой боец:%@ \n Health:%i Armor:%i",[_enemyUnit name ],[_enemyUnit health],[_enemyUnit armor],[_myUnit name], [_myUnit health], [_myUnit armor] ];
    if([_myUnit health]<0){
        loseMessage = [NSString stringWithFormat:@"%@ противника убил твоего %@a",[_enemyUnit name],[_myUnit name]];
    }
    if([_enemyUnit health]<0){
        winMessage = [NSString stringWithFormat:@"Твой %@ убил %@а протиника",[_myUnit name],[_enemyUnit name]];
    }
    if(![winMessage isEqual:@""]){
        UIAlertController *battleResultAlert = [UIAlertController alertControllerWithTitle:@"Победа" message:winMessage preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"Новая битва" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
            _myUnit = nil;
            _enemyUnit = nil;
            [self dismissViewControllerAnimated:YES completion:nil];
        }];
        [battleResultAlert addAction:action];
        [self presentViewController:battleResultAlert animated:YES completion:nil];
    }
    if(![loseMessage isEqual:@""]){
        UIAlertController *battleResultAlert = [UIAlertController alertControllerWithTitle:@"Поражение" message:loseMessage preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"Новая битва" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
            _myUnit = nil;
            _enemyUnit = nil;
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
    _myUnit = nil;
    _enemyUnit = nil;
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
