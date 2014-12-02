//
//  main.m
//  RandomItems
//
//  Created by Kevin Pimentel on 11/27/14.
//  Copyright (c) 2014 Kevin Pimentel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        // Send the message addObject: to the NSMutableArray pointed to
        // by the variable items, passing a string each time
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        // Send another message, insertObject:atIndex:, to that same array object
        [items insertObject:@"Zero" atIndex:0];
        
        for (NSString *item in items) {
            // Log the description of item
            NSLog(@"%@",item);
        }
        
        //BNRItem *item = [[BNRItem alloc] init];
        
        //[item setItemName:@"Red Sofa"];
        //[item setSerialNumber:@"A1B2C"];
        //[item setValueInDollars:100];
        
        BNRItem *item = [[BNRItem alloc] initWithItemName:@"Red Sofa" valueInDollars:100 serialNumber:@"A1B2C"];
        BNRItem *itemWithName = [[BNRItem alloc] initWithItemName:@"Blue Sofa"];
        BNRItem *itemWithNoName = [[BNRItem alloc] init];
        NSLog(@"item:%@",item);
        NSLog(@"item:%@",itemWithName);
        NSLog(@"item:%@",itemWithNoName);
        
        
        //NSLog(@"%@ %@ %@ %d",[item itemName],[item dateCreated],[item serialNumber],[item valueInDollars]);
        
        // Destroy the mutable array object
        items = nil;
    }
    return 0;
}
