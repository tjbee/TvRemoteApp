//
//  dvrViewController.h
//  tvdvr
//
//  Created by Tejaswini Beerapu on 10/15/13.
//  Copyright (c) 2013 SKothap. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "config.h"

@interface secondViewController : UIViewController {
    
    IBOutlet UILabel *label1;
    
    IBOutlet UISwitch *power;
    
    IBOutlet UIButton *play;
    
    IBOutlet UIButton *pause;
    
    IBOutlet UIButton *stop;
    
    IBOutlet UILabel *state;
    IBOutlet UIButton *ff;
    IBOutlet UIButton *fr;
    IBOutlet UIButton *record;
    
}
-(IBAction)openActionSheet:(id)sender;

- (IBAction)switchChanged:(id)sender;

- (IBAction)buttonPressed:(id)sender;

@end
