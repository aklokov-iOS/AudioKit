//
//  OCSSoundFileTable.m
//  Objective-C Sound
//
//  Created by Aurelius Prochazka on 6/16/12.
//  Copyright (c) 2012 Hear For Yourself. All rights reserved.
//

#import "OCSSoundFileTable.h"
#import "OCSArray.h"

@implementation OCSSoundFileTable

- (instancetype)initWithFilename:(NSString *)filename {
    return [self initWithFilename:filename tableSize:0];

}

- (instancetype)initWithFilename:(NSString *)filename tableSize:(int)tableSize {
    OCSArray *parameters = [OCSArray arrayFromConstants:
                                 ocspfn(filename), ocsp(0), ocsp(0), ocsp(0), nil];
    return [super initWithType:kFTSoundFile 
                         size:tableSize 
                   parameters:parameters];
}

- (OCSConstant *)channels 
{
    OCSConstant * new = [[OCSConstant alloc] init];
    [new setParameterString:[NSString stringWithFormat:@"ftchnls(%@)", self]];
    return new;
}


@end