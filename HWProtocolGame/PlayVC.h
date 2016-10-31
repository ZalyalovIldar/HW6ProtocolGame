//
//  PlayVC.h
//  HWProtocolGame
//
//  Created by Ильяс Ихсанов on 28.10.16.
//  Copyright © 2016 com.itis.iosLab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Lenar.h"
#import "Ildar.h"
#import "Ilyas.h"

@interface PlayVC : UIViewController

@property (strong, nonatomic) Lenar *lenar;
@property (strong, nonatomic) Ildar *ildar;
@property (strong, nonatomic) Ilyas *ilyas;

@property (strong, nonatomic) Lenar *lenar2;
@property (strong, nonatomic) Ildar *ildar2;
@property (strong, nonatomic) Ilyas *ilyas2;

@end
