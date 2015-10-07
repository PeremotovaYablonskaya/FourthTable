//
//  ViewController.m
//  FourthTable
//
//  Created by fpmi on 03.10.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "ViewController.h"
#import "PYBasket.h"
#import "AppDelegate.h"
#import "PYKiwi.h"
#import "PYOrange.h"
#import "PYPeach.h"
@interface ViewController ()
@property (retain, nonatomic) IBOutlet UITableView *tableFruitBasket;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_tableFruitBasket release];
    [super dealloc];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    PYBasket *basket = ((AppDelegate*)[UIApplication sharedApplication].delegate).basket;
    return [basket.fruits count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *tableItemID = @"TableItem";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableItemID];
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableItemID];
    }
    PYBasket *basket = ((AppDelegate*)[UIApplication sharedApplication].delegate).basket;
    cell.textLabel.text = [(PYFruit*)([basket.fruits objectAtIndex:indexPath.row]) toString];
    UIImage *image;
    if([(PYFruit*)([basket.fruits objectAtIndex:indexPath.row]) isMemberOfClass:[PYKiwi class]])
    {
        image = [UIImage imageNamed:@"kiwi.jpg"];
    }
    if([(PYFruit*)([basket.fruits objectAtIndex:indexPath.row]) isMemberOfClass:[PYPeach class]])
    {
        image = [UIImage imageNamed:@"peach.jpg"];
    }
    if([(PYFruit*)([basket.fruits objectAtIndex:indexPath.row]) isMemberOfClass:[PYOrange class]])
    {
        image = [UIImage imageNamed:@"orange.jpg"];
    }
    cell.imageView.image = image;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    PYBasket *basket = ((AppDelegate*)[UIApplication sharedApplication].delegate).basket;
    NSString *text = [(PYFruit*)([basket.fruits objectAtIndex:indexPath.row]) receiveInfo];
    UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Row selected:" message:text delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [message show];
}
@end
