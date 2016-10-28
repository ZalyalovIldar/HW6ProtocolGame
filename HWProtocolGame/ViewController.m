//
//  ViewController.m
//  HWProtocolGame
//
//  Created by Ildar Zalyalov on 23.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//


    
#import "ViewController.h"
#import "Archer.h"
#import "Wizard.h"
#import "Warrior.h"
#import "UnitsProtocol.h"
    
typedef NS_ENUM(NSUInteger, kRedButtonTagName) {
    kRedButtonTagNameArcher = 0,
    kRedButtonTagNameWizard = 1,
    kRedButtonTagNameWarrior = 2,
};
typedef NS_ENUM(NSUInteger, kBlueButtonTagName) {
    kBlueButtonTagNameArcher = 0,
    kBlueButtonTagNameWizard = 1,
    kBlueButtonTagNameWarrior = 2,
};
@interface ViewController ()

@property (nonatomic, strong) Archer *archer;
@property (nonatomic, strong) Wizard *wizard;
@property (nonatomic, strong) Warrior *warrior;
@property (nonatomic) id<UnitsProtocol> fighter;
@property (nonatomic) id<UnitsProtocol> enemy;



@property (nonatomic, strong) NSDictionary *redTeam;
@property (nonatomic, strong) NSDictionary  *blueTeam;


@property (nonatomic, strong) UIButton *selectedRedButton;

@property (nonatomic, strong) UIButton *selectedBlueButton;



@end

@implementation ViewController


- (NSDictionary *)redTeam
{
    if (!_redTeam)
    {
        _redTeam = @{@(kRedButtonTagNameArcher) : [[Archer alloc]initWithHealth:150 armor:60 strenght:75], @(kRedButtonTagNameWizard) : [[Wizard alloc]initWithHealth:100 armor:0 strenght:200], @(kRedButtonTagNameWarrior) : [[Warrior alloc]initWithHealth: 300 armor:100 strenght:45]};
    }
    return _redTeam;
}

- (NSDictionary *)blueTeam
{
    if (!_blueTeam)
    {
        _blueTeam = @{@(kBlueButtonTagNameArcher) : [[Archer alloc]initWithHealth:150 armor:60 strenght:75], @(kBlueButtonTagNameWizard) : [[Wizard alloc]initWithHealth:100 armor:0 strenght:200], @(kBlueButtonTagNameWarrior) : [[Warrior alloc]initWithHealth: 300 armor:100 strenght:45]};
    }
    return _blueTeam;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
}




- (IBAction)blueButtonPressed:(UIButton *)sender {
    if (self.selectedBlueButton)
    {
        [self switchState:0 forBlueButton:self.selectedBlueButton];
    }
    [self switchState:1 forBlueButton:sender];
    self.selectedBlueButton = sender;
    self.enemy = self.blueTeam[@(sender.tag)];
    
    
}
- (IBAction)redButtonPressed:(UIButton *)sender {
    if (self.selectedRedButton)
    {
        [self switchState:0 forRedButton:self.selectedRedButton];
    }
    [self switchState:1 forRedButton:sender];
    self.selectedRedButton = sender;
    self.fighter = self.redTeam[@(sender.tag)];
    self.selectedRedButton.layer.borderColor = [UIColor redColor].CGColor;
    self.selectedRedButton.layer.borderWidth = 2.0f;
    
}

- (IBAction)fightButtonDidClicked:(id)sender
{
    if (!self.fighter)
    {
        [self showAlertWithTitle:@"Error" andMessage:@"Fighter not selected"];
    }
    if (!self.enemy)
    {
        [self showAlertWithTitle:@"Error" andMessage:@"Enemy not selected"];
    }
    __weak typeof(self) weakSelf = self;
    [self.fighter battleWithEnemy:self.enemy withCompletionBlock:^(NSInteger health) {
        __strong typeof(weakSelf) blockSelf = weakSelf;
        
        blockSelf.enemy = nil;
        blockSelf.fighter = nil;
      
        NSString *message = nil;
        if (health <= 0)
        {
            message = [NSString stringWithFormat:@"Your character  dead!"];
            [blockSelf showAlertWithTitle:@"Fight is over!" andMessage:message];
            self.selectedBlueButton.enabled = NO;
            
        }
        else {
            
        message = [NSString stringWithFormat: @"Ur enemy health %ld", health];
        [blockSelf showAlertWithTitle:@"Fight done" andMessage:message];
        }
        
        [blockSelf switchState:0 forRedButton:blockSelf.selectedRedButton];
        [blockSelf switchState:0 forRedButton:blockSelf.selectedBlueButton];
        blockSelf.selectedRedButton = nil;
        blockSelf.selectedBlueButton = nil;
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark - utilites

- (void)switchState:(BOOL)state forRedButton:(UIButton *)button
{
    UIColor *enabledColor = [UIColor redColor];
    UIColor *disabledColor = [UIColor clearColor];
    
    
    button.layer.borderColor = (state) ? enabledColor.CGColor : disabledColor.CGColor;
    button.layer.borderWidth = 2.0f;
}
- (void)switchState:(BOOL)state forBlueButton:(UIButton *)button
{
    UIColor *enabledColor = [UIColor blueColor];
    UIColor *disabledColor = [UIColor clearColor];
    
    
    button.layer.borderColor = (state) ? enabledColor.CGColor : disabledColor.CGColor;
    button.layer.borderWidth = 2.0f;
}

- (void)showAlertWithTitle:(NSString *)title andMessage:(NSString *)message
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *doneAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:doneAction];
    [self presentViewController:alert animated:YES completion:nil];
    
}





@end
