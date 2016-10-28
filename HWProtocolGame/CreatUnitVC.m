//
//  CreatUnitVC.m
//  HWProtocolGame
//
//  Created by Ленар on 25.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import "CreatUnitVC.h"
#import "BattleVC.h"
#import "Wizard.h"
#import "Warrior.h"
#import "Archer.h"

@interface CreatUnitVC ()

@end

@implementation CreatUnitVC

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - configuration my UNIT
- (IBAction)myWizardActionSwitch:(id)sender {
    if(_myWizardSwitch.isOn){
        [_myArcherSwitch setOn:NO];
        [_myWarriorSwitch setOn:NO];
    }else{
        [_myWarriorSwitch setOn:YES];
        [_myArcherSwitch setOn:NO];
    }
}
- (IBAction)myWarriorActionSwitch:(id)sender {
    if(_myWarriorSwitch.isOn){
        [_myArcherSwitch setOn:NO];
        [_myWizardSwitch setOn:NO];
    }else{
        [_myArcherSwitch setOn:YES];
        [_myWizardSwitch setOn:NO];
    }
}
- (IBAction)myArcherActionSwitch:(id)sender {
    if(_myArcherSwitch.isOn){
        [_myWizardSwitch setOn:NO];
        [_myWarriorSwitch setOn:NO];
    }else{
        [_myWizardSwitch setOn:YES];
        [_myWarriorSwitch setOn:NO];
    }
}

#pragma mark - configuration enemy Unit

- (IBAction)enemyWizardActionSwitch:(id)sender {
    if(_enemyWizardSwitch.isOn){
        [_enemyArcherSwitch setOn:NO];
        [_enemyWarriorSwitch setOn:NO];
    }else{
        [_enemyWarriorSwitch setOn:YES];
        [_enemyArcherSwitch setOn:NO];
    }
}
- (IBAction)enemyWarriorActionSwitch:(id)sender {
    if(_enemyWarriorSwitch.isOn){
        [_enemyArcherSwitch setOn:NO];
        [_enemyWizardSwitch setOn:NO];
    }else{
        [_enemyArcherSwitch setOn:YES];
        [_enemyWizardSwitch setOn:NO];
    }
}
- (IBAction)enemyArcherActionSwitch:(id)sender {
    if(_enemyArcherSwitch.isOn){
        [_enemyWizardSwitch setOn:NO];
        [_enemyWarriorSwitch setOn:NO];
    }else{
        [_enemyWizardSwitch setOn:YES];
        [_enemyWarriorSwitch setOn:NO];
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    BattleVC *vc = [segue destinationViewController];
    if(_bonusSwitch.isOn){
        if(_myArcherSwitch.isOn){
            vc.myArcher = [[Archer alloc]initWithAnimal];
        }else if(_myWarriorSwitch.isOn){
            vc.myWarrior = [[Warrior alloc]initWithSheld];
        }else if(_myWizardSwitch.isOn){
            vc.myWizard = [[Wizard alloc]initWithTotem];
        }
    }else{
        if(_myArcherSwitch.isOn){
            vc.myArcher = [[Archer alloc]init];
        }else if(_myWarriorSwitch.isOn){
            vc.myWarrior = [[Warrior alloc]init];
        }else if(_myWizardSwitch.isOn){
            vc.myWizard = [[Wizard alloc]init];
        }
    }
    if(_enemyArcherSwitch.isOn){
        vc.enemyArcher = [[Archer alloc]init];
    }else if(_enemyWizardSwitch.isOn){
        vc.enemyWizard = [[Wizard alloc]init];
    }else if(_enemyWarriorSwitch.isOn){
        vc.enemyWarrior = [[Warrior alloc]init];
    }
}

@end
