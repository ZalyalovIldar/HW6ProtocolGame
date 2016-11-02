//
//  ViewController.m
//  HWProtocolGame
//
//  Created by Ildar Zalyalov on 23.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import "ViewController.h"
#import "Ildar.h"
#import "Lenar.h"
#import "Ilyas.h"
#import "PlayVC.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *firstUnit;
@property (weak, nonatomic) IBOutlet UISlider *secondUnit;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
        PlayVC *playVC = segue.destinationViewController;
    float valueFloat = _firstUnit.value;
    int valueInt = (int) valueFloat;
    
    switch (valueInt) {
        case 0:
            playVC.atackFrom = [[Lenar alloc]initLenarWithParametr];
            break;
        case 1:
            playVC.atackFrom = [[Ilyas alloc]initIlyasWithParametr];
            break;
        case 2:
            playVC.atackFrom = [[Ildar alloc]initIldarWithParametr];
            break;
            
        default:
            break;
    }
    
    valueFloat = _secondUnit.value;
    valueInt = (int) valueFloat;
    
    switch (valueInt) {
        case 0:
            playVC.atackTo = [[Lenar alloc]initLenarWithOptionalParametr:@"Lenar master"];
            break;
        case 1:
            playVC.atackTo = [[Ilyas alloc]initLenarWithOptionalParametr:@"Ilyas bro"];
            break;
        case 2:
            playVC.atackTo =[[Ildar alloc]initLenarWithOptionalParametr:@"Ildar 3 cours"];
            break;
            
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
