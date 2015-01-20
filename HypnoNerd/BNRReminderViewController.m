//
//  BNRReminderViewController.m
//  HypnoNerd
//
//  Created by Kevin Pimentel on 1/15/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "BNRReminderViewController.h"

@interface BNRReminderViewController()

@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;

@end

@implementation BNRReminderViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Get the tabbar item
        UITabBarItem *tbi = self.tabBarItem;
        
        // Give it a label
        tbi.title = @"Reminder";
        
        // Give it an image
        UIImage *i = [UIImage imageNamed:@"Time.png"];
        tbi.image = i;
        
        
    }
    return self;
}

- (IBAction)addReminder:(id)sender {
    /*
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@",date);
    
    UILocalNotification *note = [[UILocalNotification alloc] init];
    note.alertAction = @"Hypnotize me!";
    note.fireDate = date;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:note];
    */
    
    /*
    //Create a new local notification
    UILocalNotification *notification = [[UILocalNotification alloc] init];
    //Set the title of the notification
    notification.alertAction = @"Hypnotize me!";
    //Set the text of the notification
    notification.alertBody = @"Pew Pew Pew Pew";
    //Schedule the notification to be delivered 20 seconds after execution
    notification.fireDate = [NSDate dateWithTimeIntervalSinceNow:10];
    
    //Get the default notification center and schedule delivery
    [[UIApplication sharedApplication] scheduleLocalNotification:notification];
    */
    
    NSDate *date = self.datePicker.date;
    NSLog(@"date:%@",date);
    
    UILocalNotification *localNotif = [[UILocalNotification alloc] init];
    
    if (localNotif == nil)
        return;
    
    NSDateComponents *comps = [self.datePicker.calendar components:(NSCalendarUnitYear | NSCalendarUnitMonth |  NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute)
                                                        fromDate:self.datePicker.date];
    
    NSDateComponents *dateComps = [[NSDateComponents alloc] init];
    [dateComps setDay:[comps day]];
    [dateComps setMonth:[comps month]];
    [dateComps setYear:[comps year]];
    [dateComps setHour:[comps hour]];
    [dateComps setMinute:[comps minute]];
    
    NSLog(@"date:%@",date);
    
    NSCalendar *calendar = [NSCalendar autoupdatingCurrentCalendar];
    NSDate *fireDate = [calendar dateFromComponents:dateComps];
    
    localNotif.fireDate = fireDate;
    localNotif.timeZone = [NSTimeZone defaultTimeZone];
    
    localNotif.alertBody = @"Pew Pew Pew Pew";
    localNotif.alertAction = NSLocalizedString(@"View Details", nil);
    
    localNotif.soundName = UILocalNotificationDefaultSoundName;
    localNotif.applicationIconBadgeNumber = 1;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotif];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"BNRReminderViewController loaded its view.");
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.datePicker.minimumDate = [NSDate dateWithTimeIntervalSinceNow:60];
}

@end
