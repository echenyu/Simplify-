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

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    foodViewController *foodController = [segue destinationViewController];
    if([[sender currentTitle] isEqualToString:@"pizza"]) {
        [foodController setFoodImage:[UIImage imageNamed:@"pizzaalone.png"]];
    } else if([[sender currentTitle] isEqualToString:@"tofu"]) {
        [foodController setFoodImage:[UIImage imageNamed:@"tofualone.png"]];
    } else if([[sender currentTitle] isEqualToString:@"chicken"]) {
        [foodController setFoodImage:[UIImage imageNamed:@"chickenalone.png"]];
    } else if([[sender currentTitle] isEqualToString:@"dumpling"]) {
        [foodController setFoodImage:[UIImage imageNamed:@"dumplingalone.png"]];
    }
    
}

-(IBAction)foodAction:(id)sender  {
    [self performSegueWithIdentifier:@"foodsegue" sender:sender];
}

@end
