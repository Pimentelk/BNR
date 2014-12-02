//
//  BNRItem.m
//  RandomItems
//
//  Created by Kevin Pimentel on 11/27/14.
//  Copyright (c) 2014 Kevin Pimentel. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

- (instancetype)init {
    return [self initWithItemName:@"Item"];
}

- (instancetype)initWithItemName:(NSString *)name {
    return [self initWithItemName:name valueInDollars:0 serialNumber:@""];
}

- (instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber {
    self = [super init];
    
    // Check to see if the superclass's initializer succeeded
    if (self) {
        // Give the instance variables initial values
        _itemName = name;
        _valueInDollars = value;
        _serialNumber = sNumber;
        
        // Set the date to the current date
        _dateCreated = [[NSDate alloc] init];
    }
    
    // Returns the address of the newly initialized object
    return self;
}

- (void)setItemName:(NSString *)str {
    _itemName = str;
}

- (NSString *)itemName {
    return _itemName;
}

- (void)setSerialNumber:(NSString *)str {
    _serialNumber = str;
}

- (NSString *)serialNumber {
    return _serialNumber;
}

- (void)setValueInDollars:(int)v {
    _valueInDollars = v;
}

- (int)valueInDollars {
    return _valueInDollars;
}

- (NSDate *)dateCreated {
    return _dateCreated;
}


- (NSString *)description {
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@(%@): Worth $%d, recorded on %@", self.itemName, self.serialNumber, self.valueInDollars, self.dateCreated];
    return descriptionString;
}

@end
