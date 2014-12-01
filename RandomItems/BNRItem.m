//
//  BNRItem.m
//  RandomItems
//
//  Created by Kevin Pimentel on 11/27/14.
//  Copyright (c) 2014 Kevin Pimentel. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

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

@end
