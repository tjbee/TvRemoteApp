//
//  rcViewController.h
//  rc
//

//

#import <UIKit/UIKit.h>
//#import "ConfigDataViewController.h"
#import "config.h"


@interface firstViewcontroller : UIViewController{
    
   // ConfigDataViewController *cd;
    
    config * anotherSingle;
    
    UITextField *usertext;
    UITextField *segmentnumber;
    
    
    
    IBOutlet UILabel  *sliderLabel;
    IBOutlet UILabel  *speakerLabel;
        IBOutlet UISwitch *theswitch;
    IBOutlet UIButton *channel;
    IBOutlet UISlider *slider;
    
    IBOutlet UIButton *button0;
    IBOutlet UIButton *button1;
    IBOutlet UIButton *button2;
    IBOutlet UIButton *button3;
    IBOutlet UIButton *button4;
    IBOutlet UIButton *button5;
    IBOutlet UIButton *button6;
    IBOutlet UIButton *button7;
    IBOutlet UIButton *button8;
    IBOutlet UIButton *button9;
    
    IBOutlet UIButton *channelUp;
    IBOutlet UIButton *channelDown;
    
    IBOutlet UIButton *dvr;
    
    IBOutlet UILabel *myCounterLabel;
    
    
    
    NSTimer *_timer;
    
    NSString *fav1;
    NSString *fav2;
    NSString *fav3;
    NSString *fav4;
    
    
    
    int totalSeconds;
    int minutes;
    int seconds;
    IBOutlet UISegmentedControl *segmentedControl;
    
}
@property(retain,nonatomic) IBOutlet UILabel  *channelLabel;

@property(retain,nonatomic) IBOutlet UITextField *usertext;
@property(retain,nonatomic) IBOutlet UITextField *segmentnumber;
@property int someInt;


- (IBAction)switchChanged:(id)sender;

- (IBAction)sliderChanged:(id)sender;

- (IBAction)channelChanged:(id)sender;

- (IBAction)segmentChanged:(id)sender;




@end
