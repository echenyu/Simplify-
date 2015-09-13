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

    
    self.pic5.layer.cornerRadius = self.pic5.frame.size.width / 2;
    self.pic5.clipsToBounds = YES;
    self.pic5.layer.borderWidth = 3.0;
    self.pic5.layer.borderColor = [[UIColor whiteColor]CGColor];

    
    self.pic6.layer.cornerRadius = self.pic6.frame.size.width / 2;
    self.pic6.clipsToBounds = YES;
    self.pic6.layer.borderWidth = 3.0;
    self.pic6.layer.borderColor = [[UIColor whiteColor]CGColor];

    [self.navigationItem.rightBarButtonItem setImage:[UIImage imageNamed:@"home.png"]];
    [self setup];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setup {
    UIImage *faceImage = [UIImage imageNamed:@"homebutton.png"];
    UIButton *face = [UIButton buttonWithType:UIButtonTypeCustom];
    face.bounds = CGRectMake( 10, 0, 40, 40);//set bound as per you want
    [face addTarget:self action:@selector(backHome) forControlEvents:UIControlEventTouchUpInside];
    [face setImage:faceImage forState:UIControlStateNormal];
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithCustomView:face];
    self.navigationItem.rightBarButtonItem = backButton;
    self.title = @"Contacts";
}
-(void)backHome {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

-(IBAction)pic1:(id)sender {
    NSLog(@"%@", [sender title]);
    
    
    if([[sender currentTitle] isEqualToString:@"pic1"]){
        NSLog(@"hi");
        NSURL *url = [NSURL URLWithString:@"facetime://17348348105"];
        [[UIApplication sharedApplication]openURL:url];
    } else if([[sender currentTitle] isEqualToString:@"pic2"]) {
        NSURL *url = [NSURL URLWithString:@"facetime://16168561490"];
        [[UIApplication sharedApplication]openURL:url];
    } else if([[sender currentTitle] isEqualToString:@"pic3"]) {
        NSURL *url = [NSURL URLWithString:@"facetime://+12405432074"];
        [[UIApplication sharedApplication]openURL:url];
    } else if([[sender currentTitle] isEqualToString:@"pic4"]) {
        NSURL *url = [NSURL URLWithString:@"facetime://19787954939"];
        [[UIApplication sharedApplication]openURL:url];
    } else if([[sender currentTitle] isEqualToString:@"pic5"]) {
        NSURL *url = [NSURL URLWithString:@"facetime://dexter@gmail.com"];
        [[UIApplication sharedApplication]openURL:url];
    } else if([[sender currentTitle] isEqualToString:@"pic6"]) {
        NSURL *url = [NSURL URLWithString:@"facetime://alice@gmail.com"];
        [[UIApplication sharedApplication]openURL:url];
    }
}



@end
