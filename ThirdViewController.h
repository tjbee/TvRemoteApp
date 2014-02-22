//
//  favoriteChannel.h
//  rctab
//
//  Created by Tejaswini Beerapu on 10/20/13.
//  Copyright (c) 2013 SKothap. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "config.h"

@interface thirdViewController : UIViewController
{
    //rc *remoteController;
    //ConfigDataViewController *configData;
    config *testconfig;
    
    IBOutlet UISegmentedControl *favsegment;
   IBOutlet UILabel *inputlabel;
    IBOutlet UILabel *channel;
    IBOutlet UIStepper *stepper;
    IBOutlet UIButton *cancel;
    IBOutlet UIButton *save;
   IBOutlet UITextField *inputchannel;
      IBOutlet UILabel *selectedChannel;
    //   IBOutlet UIAlertView *alert;
    
    
    
}


//@property(retain,nonatomic) IBOutlet UITextField *inputchannel;
//@property(retain,nonatomic) IBOutlet UILabel *selectedChannel;



-(IBAction)enterChannel:(id)sender;

-(IBAction)saveChannel:(id)sender;

-(IBAction)cancel:(id)sender;


@end

