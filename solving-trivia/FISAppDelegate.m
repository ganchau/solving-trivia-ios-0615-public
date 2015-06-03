//
//  FISAppDelegate.m
//  solving-trivia
//
//  Created by iOS Staff on 9/30/14
//  Copyright (c) 2014 The Flatiron School. All rights reserved.
//

#import "FISAppDelegate.h"

@interface FISAppDelegate ()

@end
@implementation FISAppDelegate

-(NSString*) solveTrivia
{

    // write your solution here!
    NSString *solution = @"";
    
    NSDictionary *statesAndCapitals = @{ @"Alabama" : @"Montgomery",
                                         @"Alaska" : @"Juneau",
                                         @"Arizona" : @"Phoenix",
                                         @"Arkansas" : @"Little Rock",
                                         @"California" : @"Sacramento",
                                         @"Colorado" : @"Denver",
                                         @"Connecticut" : @"Hartford",
                                         @"Delaware" : @"Dover",
                                         @"Florida" : @"Tallahassee",
                                         @"Georgia" : @"Atlanta",
                                         @"Hawaii" : @"Honolulu",
                                         @"Idaho" : @"Boise",
                                         @"Illinois" : @"Springfield",
                                         @"Indiana" : @"Indianapolis",
                                         @"Iowa" : @"Des Moines",
                                         @"Kansas" : @"Topeka",
                                         @"Kentucky" : @"Frankfort",
                                         @"Louisiana" : @"Baton Rouge",
                                         @"Maine" : @"Augusta",
                                         @"Maryland" : @"Annapolis",
                                         @"Massachusetts" : @"Boston",
                                         @"Michigan" : @"Lansing",
                                         @"Minnesota" : @"St. Paul",
                                         @"Mississippi" : @"Jackson",
                                         @"Missouri" : @"Jefferson City",
                                         @"Montana" : @"Helena",
                                         @"Nebraska" : @"Lincoln",
                                         @"Nevada" : @"Carson City",
                                         @"New Hampshire" : @"Concord",
                                         @"New Jersey" : @"Trenton",
                                         @"New Mexico" : @"Santa Fe",
                                         @"New York" : @"Albany",
                                         @"North Carolina" : @"Raleigh",
                                         @"North Dakota" : @"Bismarck",
                                         @"Ohio" : @"Columbus",
                                         @"Oklahoma" : @"Oklahoma City",
                                         @"Oregon" : @"Salem",
                                         @"Pennsylvania" : @"Harrisburg",
                                         @"Rhode Island" : @"Providence",
                                         @"South Carolina" : @"Columbia",
                                         @"South Dakota" : @"Pierre",
                                         @"Tennessee" : @"Nashville",
                                         @"Texas" : @"Austin",
                                         @"Utah" : @"Salt Lake City",
                                         @"Vermont" : @"Montpelier",
                                         @"Virginia" : @"Richmond",
                                         @"Washington" : @"Olympia",
                                         @"West Virginia" : @"Charleston",
                                         @"Wisconsin" : @"Madison",
                                         @"Wyoming" : @"Cheyenne" };
    
    for (NSString *state in statesAndCapitals) {
        
        NSMutableArray *lettersInState = [@[] mutableCopy];
        NSMutableArray *lettersInCapital = [@[] mutableCopy];
        
        for (NSUInteger i=0; i<state.length; i++) {
            NSString *letter = [state substringWithRange:NSMakeRange(i, 1)];
            if (![letter isEqualToString:@" "]) {
                [lettersInState addObject:[letter lowercaseString]];
            }
        }
        
        NSString *capital = statesAndCapitals[state];
        for (NSUInteger i=0; i<capital.length; i++) {
            NSString *letter = [capital substringWithRange:NSMakeRange(i, 1)];
            if (![letter isEqualToString:@" "]) {
                [lettersInCapital addObject:[letter lowercaseString]];
            }
        }
        
        NSUInteger index = 0;
        for (NSString *letter in lettersInState) {
            if (![lettersInCapital containsObject:letter]) {
                index++;
                if (index == lettersInState.count) {
                    solution = state;
                }
            }
        }
    }
    
    return solution;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}
@end
