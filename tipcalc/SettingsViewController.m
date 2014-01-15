//
//  SettingsViewController.m
//  tipcalc
//
//  Created by David Law on 1/14/14.
//  Copyright (c) 2014 David Law. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultTipControl;

- (IBAction)onChange:(id)sender;
- (void)initializeValues;

@end

@implementation SettingsViewController

NSString *const DEFAULT_TIP = @"defaultTip";

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Settings";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initializeValues];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initializeValues
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.defaultTipControl.selectedSegmentIndex = [defaults integerForKey:DEFAULT_TIP];
}

- (IBAction)onChange:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:self.defaultTipControl.selectedSegmentIndex forKey:DEFAULT_TIP];
}
@end
