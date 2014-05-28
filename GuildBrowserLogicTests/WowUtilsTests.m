//
//  WowUtilsTests.m
//  GuildBrowser
//
//  Created by Laurent Valle on 28/05/14.
//  Copyright (c) 2014 Charlie Fulton. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "WowUtils.h"

@interface WowUtilsTests : XCTestCase

@end

@implementation WowUtilsTests

// 1
-(void)testCharacterClassNameLookup
{
    // 2
    XCTAssertEqualObjects(@"Warrior",
                         [WoWUtils classFromCharacterType:1],
                         @"ClassType should be Warrior");
    // 3
    XCTAssertFalse([@"Mage" isEqualToString:[WoWUtils classFromCharacterType:2]],
                  @"is not mage");
	
    // 4
    XCTAssertTrue([@"Paladin" isEqualToString:[WoWUtils classFromCharacterType:2]],
                 @" should be a Paladin");
    // add the rest as an exercise
}

- (void)testRaceTypeLookup
{
    XCTAssertEqualObjects(@"Human", [WoWUtils raceFromRaceType:1], @"");
    XCTAssertEqualObjects(@"Orc", [WoWUtils raceFromRaceType:2], @"");
    XCTAssertFalse([@"Night Elf" isEqualToString:[WoWUtils raceFromRaceType:45]],@"");
    // add the rest as an exercise
}

- (void)testQualityLookup
{
    XCTAssertEqual(@"Grey", [WoWUtils qualityFromQualityType:1], @"quality is not grey");
    XCTAssertFalse([@"Purple" isEqualToString:[WoWUtils qualityFromQualityType:10]],@"");
    // add the rest as an exercise
}

@end
