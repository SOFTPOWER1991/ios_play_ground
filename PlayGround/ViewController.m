//
//  ViewController.m
//  PlayGround
//
//  Created by zhanggeng on 2021/3/16.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *label = [[UILabel alloc] init];
    label.text = @"Go to Next Page";
    label.userInteractionEnabled = true;
    [label sizeToFit];
    label.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:({
            label;
        })];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(pushController)];
    [label addGestureRecognizer:tapGesture];
    
}

-(void)pushController{
    
    UIViewController *viewController = [[UIViewController alloc]init];
    viewController.view.backgroundColor = [UIColor whiteColor];
    viewController.navigationItem.title = @"next page";
    
    viewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"右侧标题"  style:UIBarButtonItemStylePlain target:self action:nil];
    
    [self.navigationController pushViewController:[[UIViewController alloc]init] animated:true];
}

@end
