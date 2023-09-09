//
//  iOS_Flutter_MixUITestsLaunchTests.m
//  iOS_Flutter_MixUITests
//
//  Created by Weapon Chen on 2023/9/9.
//

#import <XCTest/XCTest.h>

@interface iOS_Flutter_MixUITestsLaunchTests : XCTestCase

@end

@implementation iOS_Flutter_MixUITestsLaunchTests

+ (BOOL)runsForEachTargetApplicationUIConfiguration {
    return YES;
}

- (void)setUp {
    self.continueAfterFailure = NO;
}

- (void)testLaunch {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app launch];

    // Insert steps here to perform after app launch but before taking a screenshot,
    // such as logging into a test account or navigating somewhere in the app

    XCTAttachment *attachment = [XCTAttachment attachmentWithScreenshot:XCUIScreen.mainScreen.screenshot];
    attachment.name = @"Launch Screen";
    attachment.lifetime = XCTAttachmentLifetimeKeepAlways;
    [self addAttachment:attachment];
}

@end
