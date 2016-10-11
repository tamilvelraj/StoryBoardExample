//
//  ViewController.m
//  MyNavController
//
//  Created by Thamil Selvan V on 28/09/16.
//  Copyright © 2016 Thamil Selvan V. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


-(IBAction) rightBarButtonAction
{
    if ([_enterText.text isEqualToString:@""]) {
        NSLog(@"Sorry");
    } else {
        NSLog(@"Next Screen");
        [self performSegueWithIdentifier:@"next" sender:self];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"next"])
    {
        SecondViewController *vewSecond = segue.destinationViewController;
        vewSecond.strReceived = _enterText.text;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
