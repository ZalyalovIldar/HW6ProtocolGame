//
//  ViewController.m
//  HWProtocolGame
//
//  Created by Ildar Zalyalov on 23.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *magUserRole;
@property (weak, nonatomic) IBOutlet UIButton *warriorUserRole;
@property (weak, nonatomic) IBOutlet UIButton *archerUserRole;
@property (weak, nonatomic) IBOutlet UIButton *magEnemyRole;
@property (weak, nonatomic) IBOutlet UIButton *warrorEnemyRole;
@property (weak, nonatomic) IBOutlet UIButton *archerEnemyRole;
@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property(nonatomic) id userCharacter;
@property(nonatomic) id enemyCharacter;
@property (nonatomic) long selection;
@property (nonatomic) Boolean isUserRole;
@property (nonatomic) Boolean isEnemyRole;
@property (weak, nonatomic) IBOutlet UITextView *descriptionEnemyChar;
@property (weak, nonatomic) IBOutlet UITextView *descriptionUserChar;

@end

@implementation ViewController


- (void)viewWillAppear:(BOOL)animated{

    _isEnemyRole = false;
    _isUserRole = false;
    _startButton.enabled = NO;
    
    
    _magUserRole.backgroundColor = [UIColor colorWithRed:0.27 green:0.57 blue:0.27 alpha:1.0];
    _warriorUserRole.backgroundColor = [UIColor colorWithRed:0.27 green:0.57 blue:0.27 alpha:1.0];
    _archerUserRole.backgroundColor = [UIColor colorWithRed:0.27 green:0.57 blue:0.27 alpha:1.0];
    _magEnemyRole.backgroundColor = [UIColor colorWithRed:0.27 green:0.57 blue:0.27 alpha:1.0];
    _warrorEnemyRole.backgroundColor = [UIColor colorWithRed:0.27 green:0.57 blue:0.27 alpha:1.0];
    _archerEnemyRole.backgroundColor = [UIColor colorWithRed:0.27 green:0.57 blue:0.27 alpha:1.0];
}


- (IBAction)userRole:(UIButton*)sender {
    _isUserRole = true;
    if(_isEnemyRole){
        _startButton.enabled = YES;
    }
    switch (sender.tag) {
        case 1:
            _magUserRole.backgroundColor = [UIColor colorWithRed:0.42 green:0.72 blue:0.26 alpha:1.0];
            _warriorUserRole.backgroundColor = [UIColor colorWithRed:0.36 green:0.55 blue:0.42 alpha:1.0];
            _archerUserRole.backgroundColor = [UIColor colorWithRed:0.36 green:0.55 blue:0.42 alpha:1.0];
            _userCharacter = [[Mag alloc] initWithHealth:100 andArmor:20];
            _descriptionUserChar.text = @"Маг может случайным образом перенаправить 90% получаемого урона своему противнику";
            break;
        case 2:
            _magUserRole.backgroundColor = [UIColor colorWithRed:0.36 green:0.55 blue:0.42 alpha:1.0];
            _warriorUserRole.backgroundColor = [UIColor colorWithRed:0.42 green:0.72 blue:0.26 alpha:1.0];
            _archerUserRole.backgroundColor = [UIColor colorWithRed:0.36 green:0.55 blue:0.42 alpha:1.0];
            _userCharacter = [[Warrior alloc] initWithHealth:100 andArmor:100];
            _descriptionUserChar.text = @"Войн может cлучайным образом увиличить свой урона на 50%";
            break;
        case 3:
            _magUserRole.backgroundColor = [UIColor colorWithRed:0.36 green:0.55 blue:0.42 alpha:1.0];
            _warriorUserRole.backgroundColor = [UIColor colorWithRed:0.36 green:0.55 blue:0.42 alpha:1.0];
            _archerUserRole.backgroundColor = [UIColor colorWithRed:0.42 green:0.72 blue:0.26 alpha:1.0];
            _userCharacter = [[Archer alloc] initWithHealth:100 andArmor:40];
            _descriptionUserChar.text = @"Охотник может cлучайным укланиться от удара противника";
            break;
    }
}
- (IBAction)enemyRole:(UIButton*)sender {
    _isEnemyRole = true;
    if(_isUserRole){
        _startButton.enabled = YES;
    }
    
    switch (sender.tag) {
        case 1:
            _magEnemyRole.backgroundColor = [UIColor colorWithRed:0.42 green:0.72 blue:0.26 alpha:1.0];
            _warrorEnemyRole.backgroundColor = [UIColor colorWithRed:0.36 green:0.55 blue:0.42 alpha:1.0];
            _archerEnemyRole.backgroundColor = [UIColor colorWithRed:0.36 green:0.55 blue:0.42 alpha:1.0];
            _enemyCharacter = [[Mag alloc] initWithHealth:100 andArmor:20];
            _descriptionEnemyChar.text = @"Маг может случайным образом перенаправить 90% получаемого урона своему противнику";
            break;
        case 2:
            _magEnemyRole.backgroundColor = [UIColor colorWithRed:0.36 green:0.55 blue:0.42 alpha:1.0];
            _warrorEnemyRole.backgroundColor = [UIColor colorWithRed:0.42 green:0.72 blue:0.26 alpha:1.0];
            _archerEnemyRole.backgroundColor = [UIColor colorWithRed:0.36 green:0.55 blue:0.42 alpha:1.0];
            _enemyCharacter = [[Warrior alloc] initWithHealth:100 andArmor:50];
            _descriptionEnemyChar.text = @"Войн может cлучайным образом увиличить свой урона на 50%";
            break;
        case 3:
            _magEnemyRole.backgroundColor = [UIColor colorWithRed:0.36 green:0.55 blue:0.42 alpha:1.0];
            _warrorEnemyRole.backgroundColor = [UIColor colorWithRed:0.36 green:0.55 blue:0.42 alpha:1.0];
            _archerEnemyRole.backgroundColor = [UIColor colorWithRed:0.42 green:0.72 blue:0.26 alpha:1.0];
            _enemyCharacter = [[Archer alloc] initWithHealth:100 andArmor:30];
            _descriptionEnemyChar.text = @"Охотник может cлучайным образом укланиться от удара противника";
            break;
    }
}




- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    VCFight *vcf = [segue destinationViewController];
    vcf.userCharacter = _userCharacter;
    vcf.enemyCharacter = _enemyCharacter;
}



@end
