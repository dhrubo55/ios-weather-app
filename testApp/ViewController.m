//
//  ViewController.m
//  testApp
//
//  Created by mac-lab on 9/10/18.
//  Copyright © 2018 Dhrubo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

-(IBAction)showWeather{
    
    NSString *country_name = _country_name_input.text;
    
    //NSString *post = @"postKey=postVar";
    //NSData *postData = [post dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
    
    //NSString *postLength = [NSString stringWithFormat:@"%d", [postData length]];
    
    NSString *url_part_1= @"http://api.openweathermap.org/data/2.5/weather?";
    NSString *url_part_2= @"q=";
    NSString *url_part_2_with_country_name = [NSString stringWithFormat: @"%@%@", url_part_2, country_name];
    NSString *url_part_3 = @"&units=metric";
    NSString *url_part_4_with_api_key = @"&APPID=b73ee5055bacb60ea42247b1f06ab985";
    
    
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@%@%@%@",url_part_1,url_part_2_with_country_name,url_part_3,url_part_4_with_api_key]]];
    [request setHTTPMethod:@"GET"];
    //[request setValue:postLength forHTTPHeaderField:@"Content-Length"];
    //[request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    //[request setHTTPBody:postData];

    
}

@end
