//
//  rcViewController.m
//  rc
//


#import "FirstViewController.h"

@interface firstViewcontroller()

@property (nonatomic) BOOL userIsInTheMiddleOfEnteringANumber;

@end

@implementation firstViewcontroller;
@synthesize userIsInTheMiddleOfEnteringANumber;
@synthesize usertext;
@synthesize segmentnumber;
@synthesize someInt;
@synthesize channelLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    myCounterLabel.text = @"0";
    
    anotherSingle = [config singleObj];
    
    //NSString *test = usertext.text;
    
   // NSLog(@"%@",anotherSingle.c1title);
    
    //channelLabel.text = [NSString stringWithFormat:@"%@", cd.channelOnetest];
    // channelLabel.text = anotherSingle.c1title;
    
    //channelLabel.text = [NSString stringWithFormat:@"%@", usertext];
    
    
    //[segmentedControl setTitle:anotherSingle.c1title forSegmentAtIndex:someInt];
    // channelLabel.text = usertext.text;
    
    
    
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)startTimer:(id)sender {
    
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                              target:self
                                            selector:@selector(updateCounter:)
                                            userInfo:nil
                                             repeats:YES];
    
}
- (void)updateCounter:(NSTimer *)theTimer {
	static int count = 0;
	count += 1;
    
    seconds = count % 60;
    minutes = (count / 60) % 60;
    
	//NSString *s = [NSString stringWithFormat:@"%i:%02d"], minutes, seconds;
	myCounterLabel.text = [NSString stringWithFormat:@"%d:%.2d", minutes, seconds];
    if(count==0)
	{
		[theTimer invalidate];
		//timeLeft.text=@"done";
		
	}
	//[s release];
}

-(IBAction)stopTimer:(id)sender
{
    
    [_timer invalidate];
    // [_timer release];
    _timer = nil;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)switchChanged:(id)sender {
    if (theswitch.on) {
        sliderLabel.text = @"ON";
        button0.enabled = YES;
        button1.enabled = YES;
        button2.enabled = YES;
        button3.enabled = YES;
        button4.enabled = YES;
        button5.enabled = YES;
        button6.enabled = YES;
        button7.enabled = YES;
        button8.enabled = YES;
        button9.enabled = YES;
        dvr.enabled = YES;
        slider.enabled = YES;
        channelUp.enabled = YES;
        channelDown.enabled = YES;
        segmentedControl.enabled = YES;
    }
    else{
        sliderLabel.text = @"OFF";
        button0.enabled = NO;
        button1.enabled = NO;
        button2.enabled = NO;
        button3.enabled = NO;
        button4.enabled = NO;
        button5.enabled = NO;
        button6.enabled = NO;
        button7.enabled = NO;
        button8.enabled = NO;
        button9.enabled = NO;
        dvr.enabled = NO;
        slider.enabled = NO;
        channelUp.enabled = NO;
        channelDown.enabled = NO;
        segmentedControl.enabled = NO;
        
    }
}

- (IBAction)sliderChanged:(id)sender
{
    //  UISlider *slider = (UISlider *)sender;
    int progressAsInt = (int)roundf(slider.value);
    speakerLabel.text = [NSString stringWithFormat:@"%d",progressAsInt];
    
}
- (IBAction)channelChanged:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    
    if([btn.currentTitle isEqualToString:@"Ch +"])
    {
        NSLog(@"%@", channelLabel.text);
        if([channelLabel.text intValue] < 99)
        {
            channelLabel.text = [NSString stringWithFormat:@"%d",[channelLabel.text intValue]+1];
        }
    }
    else if ([btn.currentTitle isEqualToString:@"Ch -"])
    {
        
        if([channelLabel.text intValue] > 0)
        {
            channelLabel.text = [NSString stringWithFormat:@"%d",[channelLabel.text intValue]-1];
        }
        
    }
    else
    {
        if(userIsInTheMiddleOfEnteringANumber)
        {
            
            NSString *newDisplayText = [channelLabel.text stringByAppendingString:[(UIButton *)sender currentTitle]];
            channelLabel.text  = newDisplayText;
            userIsInTheMiddleOfEnteringANumber = NO;
        }
        else
        {
            userIsInTheMiddleOfEnteringANumber = YES;
            channelLabel.text = [(UIButton *)sender currentTitle];
        }
    }
    
}

- (IBAction)segmentChanged:(id)sender
{
    if ([sender selectedSegmentIndex] == 0) {
        
        // channelLabel.text = cd.channelOneLabel;
        channelLabel.text = anotherSingle.c1number;
        [segmentedControl setTitle:anotherSingle.c1title forSegmentAtIndex:0];
        
    }
    if ([sender selectedSegmentIndex] == 1) {
        channelLabel.text = anotherSingle.c2number;
        [segmentedControl setTitle:anotherSingle.c2title forSegmentAtIndex:1];
    }
    if ([sender selectedSegmentIndex] == 2) {
        channelLabel.text = anotherSingle.c3number;
        [segmentedControl setTitle:anotherSingle.c3title forSegmentAtIndex:2];
    }
    if ([sender selectedSegmentIndex] == 3) {
        channelLabel.text = anotherSingle.c4number;
        [segmentedControl setTitle:anotherSingle.c4title forSegmentAtIndex:3];
    }
}

@end
