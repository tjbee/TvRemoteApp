//
//  favoriteChannel.m
//  rctab
//
//  Created by Tejaswini Beerapu on 10/20/13.
//  Copyright (c) 2013 SKothap. All rights reserved.
//

#import "ThirdViewController.h"

#define MAXLENGTH 10


@interface thirdViewController ()<UIActionSheetDelegate>

@end

@implementation thirdViewController;
//@synthesize inputchannel;
//@synthesize selectedChannel;
//@synthesize inputchannel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)enterChannel:(id)sender
{
   /* if ([inputchannel.text length] > 4) {
        NSString *msg = nil;
        
        channel.text = @"NO";
        
        msg = @"The Action was performed.";
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Please enter less than 4 characters"
                              message:msg
                              delegate:self cancelButtonTitle:@"OK!" otherButtonTitles:nil];
        [alert show];
        inputchannel.text = [inputchannel.text substringToIndex:[inputchannel.text length]-1];
        //return NO;
    }
    
    
    if ([inputchannel.text length] < 2) {
        NSString *msg = nil;
        
        channel.text = @"NO";
        
        msg = @"The Action was performed.";
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Please enter atleast 1 character"
                              message:msg
                              delegate:self cancelButtonTitle:@"OK!" otherButtonTitles:nil];
        [alert show];
        //inputchannel.text = [inputchannel.text substringToIndex:[inputchannel.text length]-1];
        //return NO;
    }
    */
    
    
}


- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    if ([textField.text length] > MAXLENGTH) {
        NSString *msg = nil;
        
        channel.text = @"NO";
        
        msg = @"The Action was performed.";
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Requested Action Complete"
                              message:msg
                              delegate:self cancelButtonTitle:@"OK!" otherButtonTitles:nil];
        [alert show];
        //textField.text = [textField.text substringToIndex:MAXLENGTH-1];
        //return NO;
    }
    return YES;
}
-(IBAction)saveChannel:(id)sender
{
    //[[[favsegment] objectAtIndex:3] setAccessibilityLabel:@"GENERAL_SEGMENT"];
    if ([inputchannel.text length] > 4) {
        NSString *msg = nil;
        
        channel.text = @"NO";
        
        msg = @"The Action was performed.";
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Please enter less than 4 characters"
                              message:msg
                              delegate:self cancelButtonTitle:@"OK!" otherButtonTitles:nil];
        [alert show];
        inputchannel.text = [inputchannel.text substringToIndex:[inputchannel.text length]-1];
        //return NO;
    }
    
    
    if ([inputchannel.text length] < 1) {
        NSString *msg = nil;
        
        channel.text = @"NO";
        
        msg = @"The Action was performed.";
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Please enter atleast 1 character"
                              message:msg
                              delegate:self cancelButtonTitle:@"OK!" otherButtonTitles:nil];
        [alert show];
        //    inputchannel.text = [inputchannel.text substringToIndex:[inputchannel.text length]-1];
        //return NO;
    }
    
    [self.view endEditing:YES];
    
    [favsegment setTitle:inputchannel.text forSegmentAtIndex:[favsegment selectedSegmentIndex]];
    
    //remoteController = [[rc alloc]initWithNibName:@"rc" bundle:nil];
    //remoteController.usertext = selectedChannel.text;
    // remoteController.segmentnumber = inputchannel;
    //remoteController.someInt = favsegment.selectedSegmentIndex;
    
    if([favsegment selectedSegmentIndex] == 0)
    {
        
       // NSLog(@"hey");
        testconfig.c1title = @"hey";
        testconfig.test = inputchannel.text;
        testconfig.c1title = inputchannel.text;
        testconfig.c1number = selectedChannel.text;
        testconfig.c1segment = favsegment.selectedSegmentIndex;
        
    }
    else if([favsegment selectedSegmentIndex] == 1)
    {
        
        testconfig.c2title = inputchannel.text;
        testconfig.c2number = selectedChannel.text;
        testconfig.c2segment = favsegment.selectedSegmentIndex;
        
    }
    else if([favsegment selectedSegmentIndex] == 2)
    {
        
        testconfig.c3title = inputchannel.text;
        testconfig.c3number = selectedChannel.text;
        testconfig.c3segment = favsegment.selectedSegmentIndex;
        
    }
    else
    {
        
        testconfig.c4title = inputchannel.text;
        testconfig.c4number = selectedChannel.text;
        testconfig.c4segment = favsegment.selectedSegmentIndex;
        
    }
    NSLog(@"%@",inputchannel.text);
    NSLog(@"%@",selectedChannel.text);
    NSLog(@"%@",testconfig.test);
    NSLog(@"%@",testconfig.c1title);
    NSLog(@"%@",testconfig.c1number);
    NSLog(@"%d",testconfig.c1segment);
    // [self.view addSubview:remoteController.view];
    //[self.view ]
    
}
- (IBAction)changeValue:(UIStepper *)sender {
    
    //  UIStepper *stepper = (UIStepper *) sender;
    
    // int test = channel.text++;
    
    
    stepper.maximumValue = 99;
    stepper.minimumValue = 0;
    
    NSLog(@"%f",sender.value);
    
    selectedChannel.text = [NSString stringWithFormat:@"%.f", sender.value];
    
 
    
}

- (IBAction)cancel:(id)sender
{
    
    [self.view endEditing:YES];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    testconfig = [config singleObj];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
