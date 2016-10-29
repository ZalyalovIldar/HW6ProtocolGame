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


- (IBAction)firstUnitAction:(id)sender {
//    if (_firstUnit.value < 0.6) {
//        _secondUnit.value = 1;
//    }else{
//        if ((_firstUnit.value > 0.6) && (_firstUnit.value < 1.4) && (_firstUnit.value = 0.6) && (_firstUnit.value = 1.4)) {
//            _secondUnit.value = 0;
//        }else{
//            if (_firstUnit.value > 1.4) {
//                _secondUnit.value = 0;
//            }
//        }
//    }
}

- (IBAction)secondUnitAction:(id)sender {
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
        PlayVC *playVC = segue.destinationViewController;
        //secondViewController.delegate = self;
    if (_firstUnit.value < 0.6) {
        playVC.lenar = [[Lenar alloc]initLenarWithParametr];
    }
    if ((_firstUnit.value >= 0.6) && (_firstUnit.value <= 1.4)) {
        playVC.ilyas = [[Ilyas alloc]initIlyasWithParametr];
    }
    if (_firstUnit.value > 1.4){
        playVC.ildar = [[Ildar alloc]initIldarWithParametr];
    }
    
    
    if (_secondUnit.value < 0.6) {
        if (_firstUnit.value < 0.6) {
            playVC.lenar2 = [[Lenar alloc]initLenarWithOptionalParametr:@"Lenar master"];
        }else{
            playVC.lenar2 = [[Lenar alloc]initLenarWithParametr];
        }
    }
    if ((_secondUnit.value >= 0.6) && (_secondUnit.value <= 1.4)) {
        if ((_firstUnit.value >= 0.6) &&(_firstUnit.value <= 1.4)) {
            playVC.ilyas2 = [[Ilyas alloc]initLenarWithOptionalParametr:@"Ilyas bro"];
        }else{
            playVC.ilyas2 = [[Ilyas alloc]initIlyasWithParametr];
        }
    }
    if (_secondUnit.value > 1.4) {
        if (_firstUnit.value > 1.4) {
            playVC.ildar2 = [[Ildar alloc]initLenarWithOptionalParametr:@"Ildar 3 cours"];
        }else{
            playVC.ildar2 = [[Ildar alloc]initIldarWithParametr];
        }
    }

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
