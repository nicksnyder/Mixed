//
//  ObjectiveCSampleAppTests.m
//  ObjectiveCSampleAppTests
//
//  Created by Nick Snyder on 9/6/16.
//  Copyright © 2016 Nick Snyder. All rights reserved.
//

#import <XCTest/XCTest.h>
@import Mixed; // Xcode IDE complains "Could not build module 'Mixed'" but it works when you build it.

@interface ObjectiveCSampleAppTests : XCTestCase

@end

@implementation ObjectiveCSampleAppTests

- (void)testSwiftThing {
    NSString *hello = [[SwiftThing new] hello];
    XCTAssertEqualObjects(hello, @"hello from Swift");
}

- (void)testObjectiveCThing {
    NSString *hello = [[ObjectiveCThing new] hello];
    XCTAssertEqualObjects(hello, @"hello from Objective-C");
}

- (void)testBothThing {
    NSString *hello = [[BothThing new] hello];
    XCTAssertEqualObjects(hello, @"hello from Objective-Chello from Swift");
}

@end
