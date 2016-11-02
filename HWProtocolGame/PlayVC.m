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
    [_atackTo attackTo:_atackFrom];
    [_atackFrom attackTo:_atackFrom];
    
    if ([_atackTo health] == 0) {
        finalAlertMessege = [NSString stringWithFormat:@"%@ выйграл!", [_atackFrom name]];
        [self reinintWithGameOverAlert:finalAlertMessege];
    }
    if ([_atackFrom health] == 0) {
        finalAlertMessege = [NSString stringWithFormat:@"%@ выйграл!", [_atackTo name]];
        [self reinintWithGameOverAlert:finalAlertMessege];
    }
    finalAlertMessege = [NSString stringWithFormat:@"%@ \nHealth: %i \nArmor: %i \n %@ \nHealth: %i \nArmor: %i", [_atackFrom name], [_atackFrom health], [_atackFrom armor], [_atackTo name], [_atackTo health], [_atackTo armor]];

#pragma mark - Alert
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Статистика игры" message:finalAlertMessege preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* resultAlert = [UIAlertAction actionWithTitle:@"Продолжить бой!" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];
    
    [alert addAction:resultAlert];
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)gameOver:(id)sender {
    [self clearGame];
}


-(void)clearGame{
    _atackTo = nil;
    _atackFrom = nil;
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)reinintWithGameOverAlert:(NSString *)massage{
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Игра окончена" message:massage preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* resultAlert = [UIAlertAction actionWithTitle:@"Начать заново" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
        _atackTo = nil;
        _atackFrom = nil;
        [self dismissViewControllerAnimated:YES completion:nil];
        //а этот self получается тоже нельзя?
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
