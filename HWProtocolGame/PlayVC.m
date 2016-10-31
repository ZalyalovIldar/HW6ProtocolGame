//
//  PlayVC.m
//  HWProtocolGame
//
//  Created by Ильяс Ихсанов on 28.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import "PlayVC.h"
#import "ViewController.h"
#import "Ilyas.h"
#import "Ildar.h"
#import "Lenar.h"

@interface PlayVC ()



@end

@implementation PlayVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)letsCodeButton:(id)sender {
    NSString *finalAlertMessege =[[NSString alloc]init];
    /*Один игрок нападает на второго
     *1 проверяется хилка и броня
     *2 если броня в 0 то удаляется хилка через Юнитов
     *3 Вывод сообщения только в конце
     *4
     *
     *..объявить все nil после завершения битвы
     */
    
    if (_lenar != nil) {
        if (_ildar2 != nil) {
            [_lenar attackTo:_ildar2];
            [_ildar2 attackTo:_lenar];
            if (_lenar.health == 0) {
                finalAlertMessege = [NSString stringWithFormat:@"%@ выйграл!", _ildar2.name];
                [self reinintWithGameOverAlert:finalAlertMessege];
            }else{
                finalAlertMessege = [NSString stringWithFormat:@"%@ \nHealth: %i \nArmor: %i \n %@ \nHealth: %i \nArmor: %i", _lenar.name, _lenar.health, _lenar.armor, _ildar2.name, _ildar2.health, _ildar2.armor];
            }
            if (_ildar2.health == 0) {
                finalAlertMessege = [NSString stringWithFormat:@"%@ выйграл!",_lenar.name];
                [self reinintWithGameOverAlert:finalAlertMessege];
            }else{
                finalAlertMessege = [NSString stringWithFormat:@"%@ \nHealth: %i \nArmor: %i \n %@ \nHealth: %i \nArmor: %i", _lenar.name, _lenar.health, _lenar.armor, _ildar2.name, _ildar2.health, _ildar2.armor];
            }
            
        }
        if (_ilyas2 != nil) {
            [_lenar attackTo:_ilyas2];
            [_ilyas2 attackTo:_lenar];
            if(_ilyas2.health == 0){
                finalAlertMessege = [NSString stringWithFormat:@"%@ выйграл!", _lenar.name];
                [self reinintWithGameOverAlert:finalAlertMessege];
            }else{
                finalAlertMessege = [NSString stringWithFormat:@"%@ \nHealth: %i \nArmor: %i \n %@ \nHealth: %i \nArmor: %i", _lenar.name, _lenar.health, _lenar.armor, _ilyas2.name, _ilyas2.health, _ilyas2.armor];
            }
            if (_lenar.health == 0){
                finalAlertMessege = [NSString stringWithFormat:@"%@ выйграл!", _lenar.name];
                [self reinintWithGameOverAlert:finalAlertMessege];
            }else{
            finalAlertMessege = [NSString stringWithFormat:@"%@ \nHealth: %i \nArmor: %i \n %@ \nHealth: %i \nArmor: %i", _lenar.name, _lenar.health, _lenar.armor, _ilyas2.name, _ilyas2.health, _ilyas2.armor];
            }
        }
        if (_lenar2 != nil) {
            [_lenar attackTo:_lenar2];
            [_lenar2 attackTo:_lenar];
            if (_lenar.health == 0) {
                finalAlertMessege = [NSString stringWithFormat:@"%@ выйграл!", _lenar2.name];
                [self reinintWithGameOverAlert:finalAlertMessege];
            }else{
                finalAlertMessege = [NSString stringWithFormat:@"%@ \nHealth: %i \nArmor: %i \n %@ \nHealth: %i \nArmor: %i", _lenar.name, _lenar.health, _lenar.armor, _lenar2.name, _lenar2.health, _lenar2.armor];}
            if (_lenar2.health == 0) {
                finalAlertMessege = [NSString stringWithFormat:@"%@ выйграл!", _lenar.name];
                [self reinintWithGameOverAlert:finalAlertMessege];
            }else{
                finalAlertMessege = [NSString stringWithFormat:@"%@ \nHealth: %i \nArmor: %i \n %@ \nHealth: %i \nArmor: %i", _lenar.name, _lenar.health, _lenar.armor, _lenar2.name, _lenar2.health, _lenar2.armor];
            }
        }
    }
    if (_ildar != nil) {
        if (_ildar2 != nil) {
            [_ildar attackTo:_ildar2];
            [_ildar2 attackTo:_ildar];
            if (_ildar.health == 0) {
                finalAlertMessege = [NSString stringWithFormat:@"%@ выйграл!", _ildar2.name];
                [self reinintWithGameOverAlert:finalAlertMessege];
            }else{
                finalAlertMessege = [NSString stringWithFormat:@"%@ \nHealth: %i \nArmor: %i \n %@ \nHealth: %i \nArmor: %i", _ildar.name, _ildar.health, _ildar.armor, _ildar2.name, _ildar2.health, _ildar2.armor];}
            if (_ildar2.health == 0) {
                finalAlertMessege = [NSString stringWithFormat:@"%@ выйграл!", _ildar.name];
                [self reinintWithGameOverAlert:finalAlertMessege];
            }else{
                finalAlertMessege = [NSString stringWithFormat:@"%@ \nHealth: %i \nArmor: %i \n %@ \nHealth: %i \nArmor: %i", _ildar.name, _ildar.health, _ildar.armor, _ildar2.name, _ildar2.health, _ildar2.armor];
            }
        }
        if (_ilyas2 != nil) {
            [_ildar attackTo:_ilyas2];
            [_ilyas2 attackTo:_ildar];
            if (_ildar.health == 0) {
                finalAlertMessege = [NSString stringWithFormat:@"%@ выйграл!", _ilyas2.name];
                [self reinintWithGameOverAlert:finalAlertMessege];
            }else{
            finalAlertMessege = [NSString stringWithFormat:@"%@ \nHealth: %i \nArmor: %i \n %@ \nHealth: %i \nArmor: %i", _ildar.name, _ildar.health, _ildar.armor, _ilyas2.name, _ilyas2.health, _ilyas2.armor];
            }
            if (_ilyas2 == 0) {
                finalAlertMessege = [NSString stringWithFormat:@"%@ выйграл!", _ildar.name];
                [self reinintWithGameOverAlert:finalAlertMessege];
            }else{
                finalAlertMessege = [NSString stringWithFormat:@"%@ \nHealth: %i \nArmor: %i \n %@ \nHealth: %i \nArmor: %i", _ildar.name, _ildar.health, _ildar.armor, _ilyas2.name, _ilyas2.health, _ilyas2.armor];
            }
        }
        if (_lenar2 != nil) {
            [_ildar attackTo:_lenar2];
            [_lenar2 attackTo:_ildar];
            if (_ildar.health == 0) {
                finalAlertMessege = [NSString stringWithFormat:@"%@ выйграл!", _lenar2.name];
                [self reinintWithGameOverAlert:finalAlertMessege];
            }else{
                finalAlertMessege = [NSString stringWithFormat:@"%@ \nHealth: %i \nArmor: %i \n %@ \nHealth: %i \nArmor: %i", _ildar.name, _ildar.health, _ildar.armor, _lenar2.name, _lenar2.health, _lenar2.armor];
            }
            if (_lenar2.health == 0) {
                finalAlertMessege = [NSString stringWithFormat:@"%@ выйграл!", _ildar.name];
                [self reinintWithGameOverAlert:finalAlertMessege];
            }else{
                finalAlertMessege = [NSString stringWithFormat:@"%@ \nHealth: %i \nArmor: %i \n %@ \nHealth: %i \nArmor: %i", _ildar.name, _ildar.health, _ildar.armor, _lenar2.name, _lenar2.health, _lenar2.armor];
            }
        }
    }
    if (_ilyas != nil) {
        if (_ildar2 != nil) {
            [_ilyas attackTo:_ildar2];
            [_ildar2 attackTo:_ilyas];
            if (_ilyas == 0) {
                finalAlertMessege = [NSString stringWithFormat:@"%@ выйграл!", _ildar2.name];
                [self reinintWithGameOverAlert:finalAlertMessege];
            }else{
            finalAlertMessege = [NSString stringWithFormat:@"%@ \nHealth: %i \nArmor: %i \n %@ \nHealth: %i \nArmor: %i", _ilyas.name, _ilyas.health, _ilyas.armor, _ildar2.name, _ildar2.health, _ildar2.armor];
            }
            if (_ildar2.health == 0) {
                finalAlertMessege = [NSString stringWithFormat:@"%@ выйграл!", _ilyas.name];
                [self reinintWithGameOverAlert:finalAlertMessege];
            }else{
                finalAlertMessege = [NSString stringWithFormat:@"%@ \nHealth: %i \nArmor: %i \n %@ \nHealth: %i \nArmor: %i", _ilyas.name, _ilyas.health, _ilyas.armor, _ildar2.name, _ildar2.health, _ildar2.armor];
            }
        }
        if (_ilyas2 != nil) {
            [_ilyas attackTo:_ilyas2];
            [_ilyas2 attackTo:_ilyas];
            if (_ilyas.health == 0) {
                finalAlertMessege = [NSString stringWithFormat:@"%@ выйграл!", _ilyas2.name];
                [self reinintWithGameOverAlert:finalAlertMessege];
            }else{
            finalAlertMessege = [NSString stringWithFormat:@"%@ \nHealth: %i \nArmor: %i \n %@ \nHealth: %i \nArmor: %i", _ilyas.name, _ilyas.health, _ilyas.armor, _ilyas2.name, _ilyas2.health, _ilyas2.armor];
            }
            if (_ilyas2.health == 0) {
                finalAlertMessege = [NSString stringWithFormat:@"%@ выйграл!", _ilyas.name];
                [self reinintWithGameOverAlert:finalAlertMessege];
            }else{
                finalAlertMessege = [NSString stringWithFormat:@"%@ \nHealth: %i \nArmor: %i \n %@ \nHealth: %i \nArmor: %i", _ilyas.name, _ilyas.health, _ilyas.armor, _ilyas2.name, _ilyas2.health, _ilyas2.armor];
            }
        }
        if (_lenar2 != nil) {
            [_ilyas attackTo:_lenar2];
            [_lenar2 attackTo:_ilyas];
            if (_ilyas.health == 0) {
                finalAlertMessege = [NSString stringWithFormat:@"%@ выйграл!", _lenar2.name];
                [self reinintWithGameOverAlert:finalAlertMessege];
            }else{
            finalAlertMessege = [NSString stringWithFormat:@"%@ \nHealth: %i \nArmor: %i \n %@ \nHealth: %i \nArmor: %i", _ilyas.name, _ilyas.health, _ilyas.armor, _lenar2.name, _lenar2.health, _lenar2.armor];
            }
            if (_lenar2.health == 0) {
                finalAlertMessege = [NSString stringWithFormat:@"%@ выйграл!", _ilyas.name];
                [self reinintWithGameOverAlert:finalAlertMessege];
            }else{
                finalAlertMessege = [NSString stringWithFormat:@"%@ \nHealth: %i \nArmor: %i \n %@ \nHealth: %i \nArmor: %i", _ilyas.name, _ilyas.health, _ilyas.armor, _lenar2.name, _lenar2.health, _lenar2.armor];
            }
        }
    }
#pragma mark - Alert
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Статистика игры" message:finalAlertMessege preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* resultAlert = [UIAlertAction actionWithTitle:@"Продолжить бой!" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];
    
    [alert addAction:resultAlert];
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)gameOver:(id)sender {
    [self reinit];
}


-(void)reinit{
    _ilyas = nil;
    _ildar = nil;
    _lenar = nil;
    
    _ilyas2 = nil;
    _ildar2 = nil;
    _lenar2 = nil;
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)reinintWithGameOverAlert:(NSString *)massage{
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Игра окончена" message:massage preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* resultAlert = [UIAlertAction actionWithTitle:@"Начать заново" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
        [self reinit];
    }];
    
    [alert addAction:resultAlert];
    [self presentViewController:alert animated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
