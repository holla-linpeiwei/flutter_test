//
//  ViewController.m
//  NativeDemo
//
//  Created by 小siri on 2021/2/13.
//

#import "ViewController.h"
#import <Flutter/Flutter.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    // Do any additional setup after loading the view.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    FlutterViewController *vc = [FlutterViewController new];
    [self presentViewController:vc animated:YES completion:nil];
    
}

@end
