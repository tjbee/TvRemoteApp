//
//  dvrViewController.m
//  tvdvr
//
//  Created by Tejaswini Beerapu on 10/15/13.
//  Copyright (c) 2013 SKothap. All rights reserved.
//

#import "SecondViewController.h"

@interface secondViewController () <UIActionSheetDelegate>

@end

@implementation secondViewController

-(IBAction)openActionSheet:(id)sender
{
    NSString *test = [(UIButton *)sender currentTitle];
    
    UIActionSheet* actionSheet = [[UIActionSheet alloc] initWithTitle:@"Force"
                                                             delegate:self
                                                    cancelButtonTitle:nil
                                               destructiveButtonTitle:nil
                                                    otherButtonTitles:nil];
    
    [actionSheet addButtonWithTitle:test];
    [actionSheet addButtonWithTitle:@"Cancel"];
    actionSheet.cancelButtonIndex = actionSheet.numberOfButtons - 1;
    
    [actionSheet showInView:self.view];
    
}


- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex

{
    NSString *msg = nil;
    NSString *buttonTitle = [actionSheet buttonTitleAtIndex:buttonIndex];
    if  ([buttonTitle isEqualToString:@"Cancel"]) {
        //
    }
    else {
        state.text = buttonTitle;
        
        msg = @"The Action was performed.";
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Requested Action Complete"
                              message:msg
                              delegate:self cancelButtonTitle:@"OK!" otherButtonTitles:nil];
        [alert show];
        
    }
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)switchChanged:(id)sender {
    if (power.on) {
        label1.text = @"ON";
        play.enabled = YES;
        pause.enabled = YES;
        ff.enabled = YES;
        fr.enabled = YES;
        record.enabled = YES;
        stop.enabled = YES;
        
        
    }
    else{
        label1.text = @"OFF";
        play.enabled = NO;
        pause.enabled = NO;
        ff.enabled = NO;
        fr.enabled = NO;
        record.enabled = NO;
        stop.enabled = NO;
        
        
    }
}

- (IBAction)buttonPressed:(id)sender
{
    NSArray* buttons = [NSArray arrayWithObjects:play, pause, stop, ff, fr,record,nil];
    for (UIButton* button in buttons) {
        if (button == sender) {
            button.selected = YES;
            NSString *currenttext = state.text;
            NSString *newDisplayText = [(UIButton *)sender currentTitle];
            
            
            if([currenttext isEqualToString:@"Play"] || [currenttext isEqualToString:@"Pause"] || [currenttext isEqualToString:@"Fast Forward"] || [currenttext isEqualToString:@"Fast Rewind"])
            {
                
                if([newDisplayText isEqualToString:@"Record"])
                {
                    [self openActionSheet: sender];
                    
                }
                else{
                    
                    state.text = newDisplayText;
                }
                
            }
            
            else if ([currenttext isEqualToString:@"Record"])
            {
                if([newDisplayText isEqualToString:@"Stop"])
                {
                    state.text = newDisplayText;
                    
                }
                else{
                    
                    [self openActionSheet: sender];
                }
                
            }
            else
            {
                if([newDisplayText isEqualToString:@"Play"]||[newDisplayText isEqualToString:@"Record"])
                {
                    state.text = newDisplayText;
                    
                }
                else{
                    
                    [self openActionSheet: sender];
                }
                
                
            }
            
            
        }
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
