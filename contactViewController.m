//
//  contactViewController.m
//  
//
//  Created by Eric Yu on 9/12/15.
//
//

#import "contactViewController.h"

@implementation contactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.pic1.layer.cornerRadius = self.pic1.frame.size.width / 2;
    self.pic1.layer.borderWidth = 3.0;
    self.pic1.layer.borderColor = [[UIColor whiteColor]CGColor];
    self.pic1.clipsToBounds = YES;
    
    self.pic2.layer.cornerRadius = self.pic2.frame.size.width / 2;
    self.pic2.clipsToBounds = YES;
    self.pic2.layer.borderWidth = 3.0;
    self.pic2.layer.borderColor = [[UIColor whiteColor]CGColor];
    
    self.pic3.layer.cornerRadius = self.pic3.frame.size.width / 2;
    self.pic3.clipsToBounds = YES;
    self.pic3.layer.borderWidth = 3.0;
    self.pic3.layer.borderColor = [[UIColor whiteColor]CGColor];

    
    self.pic4.layer.cornerRadius = self.pic4.frame.size.width / 2;
    self.pic4.clipsToBounds = YES;
    self.pic4.layer.borderWidth = 3.0;
    self.pic4.layer.borderColor = [[UIColor whiteColor]CGColor];

    self.unreadMessages.layer.cornerRadius = self.unreadMessages.frame.size.width / 2;
    self.unreadMessages.clipsToBounds = YES;
    // Do any additional setup after loading the view, typically from a nib.
    self.numberUnread.text = @"10";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)pic1:(id)sender {
    NSLog(@"%@", [sender title]);
    
    
    if([[sender currentTitle] isEqualToString:@"pic1"]){
        NSLog(@"hi");
        NSURL *url = [NSURL URLWithString:@"facetime://17348348105"];
        [[UIApplication sharedApplication]openURL:url];
    } else if([[sender currentTitle] isEqualToString:@"pic2"]) {
        NSURL *url = [NSURL URLWithString:@"facetime://17813924277"];
        [[UIApplication sharedApplication]openURL:url];
    } else if([[sender currentTitle] isEqualToString:@"pic3"]) {
        NSURL *url = [NSURL URLWithString:@"facetime://19787954939"];
        [[UIApplication sharedApplication]openURL:url];
    } else if([[sender currentTitle] isEqualToString:@"pic4"]) {
        NSURL *url = [NSURL URLWithString:@"facetime://16168561490"];
        [[UIApplication sharedApplication]openURL:url];
    } else if([[sender currentTitle] isEqualToString:@"pic5"]) {
        NSURL *url = [NSURL URLWithString:@"facetime://17348348105"];
        [[UIApplication sharedApplication]openURL:url];
    } else if([[sender currentTitle] isEqualToString:@"pic6"]) {
        NSURL *url = [NSURL URLWithString:@"facetime://17348348105"];
        [[UIApplication sharedApplication]openURL:url];
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
}

@end
