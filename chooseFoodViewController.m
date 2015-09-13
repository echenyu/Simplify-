//
//  chooseFoodViewController.m
//  
//
//  Created by Eric Yu on 9/13/15.
//
//

#import "chooseFoodViewController.h"
#import "foodViewController.h"

@implementation chooseFoodViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationItem.rightBarButtonItem setImage:[UIImage imageNamed:@"home.png"]];

}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    foodViewController *foodController = [segue destinationViewController];
    if([[sender currentTitle] isEqualToString:@"pizza"]) {
        [foodController setFoodImage:[UIImage imageNamed:@"pizzaalone.png"]];
        [foodController setFoodItem:@"pizza"];
    } else if([[sender currentTitle] isEqualToString:@"tofu"]) {
        [foodController setFoodImage:[UIImage imageNamed:@"tofualone.png"]];
        [foodController setFoodItem:@"tofu"];

    } else if([[sender currentTitle] isEqualToString:@"chicken"]) {
        [foodController setFoodImage:[UIImage imageNamed:@"chickenalone.png"]];
        [foodController setFoodItem:@"chicken"];

    } else if([[sender currentTitle] isEqualToString:@"dumpling"]) {
        [foodController setFoodImage:[UIImage imageNamed:@"dumplingalone.png"]];
        [foodController setFoodItem:@"chicken"];

    }
    
}

-(IBAction)foodAction:(id)sender  {
    [self performSegueWithIdentifier:@"foodsegue" sender:sender];
}

@end
