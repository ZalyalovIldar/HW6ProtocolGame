//
//  VCFight.m
//  HWProtocolGame
//
//  Created by Rustam N on 28.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import "VCFight.h"



@interface VCFight ()
@property (strong, nonatomic) UIAlertController *alertStopGame;
@property (strong, nonatomic) UIAlertAction *okAllertButton;
@property (strong, nonatomic) UIAlertAction *cancelAllertButton;
@property (weak, nonatomic) IBOutlet UILabel *hpUser;
@property (weak, nonatomic) IBOutlet UILabel *hpEnemy;
@property (weak, nonatomic) IBOutlet UITextView *feedBack;
@property (weak, nonatomic) IBOutlet UITextView *enmyFeedBack;
@property (weak, nonatomic) IBOutlet UITextView *userFeedBack;

@end

@implementation VCFight
@synthesize userCharacter;





- (void)viewDidLoad {
    [super viewDidLoad];

    
    
    _alertStopGame = [UIAlertController alertControllerWithTitle:@"Завершить игру" message:@"Вы уверены?" preferredStyle:UIAlertControllerStyleAlert];
    
    _okAllertButton = [UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault  handler:^(UIAlertAction * action) {
        [self dismissViewControllerAnimated:NO completion:nil];
    }];
    _cancelAllertButton = [UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * action){}];
    [_alertStopGame addAction:_cancelAllertButton];
    [_alertStopGame addAction:_okAllertButton];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)attackButton:(id)sender {
    [userCharacter blow:_enemyCharacter feedBackBlock:^(NSString *feedback) {
        _userFeedBack.text = feedback;
    } endBlock:^(NSString *message) {
        NSLog(@"%@", message);
                UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Game Over" message: @"Вы проиграли" preferredStyle:UIAlertControllerStyleAlert];
                [alert addAction:_okAllertButton];
                [self presentViewController:alert animated:YES completion:nil];
    }];
    
    if([userCharacter getHealth]){
        [_enemyCharacter blow:userCharacter feedBackBlock:^(NSString *feedback) {
            _enmyFeedBack.text = feedback;
        } endBlock:^(NSString *message) {
            NSLog(@"%@", message);
            UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Game Over" message: @"Вы выйграли" preferredStyle:UIAlertControllerStyleAlert];
            [alert addAction:_okAllertButton];
            [self presentViewController:alert animated:YES completion:nil];
        }];
    }
       
       
       
       _hpUser.text = [NSString stringWithFormat:@"%d",[userCharacter getHealth]];
       _hpEnemy.text = [NSString stringWithFormat:@"%d",[_enemyCharacter getHealth]];
       
       
       
    
}

- (IBAction)endButton:(id)sender {
    [self presentViewController:_alertStopGame animated:YES completion:nil];
}

@end


