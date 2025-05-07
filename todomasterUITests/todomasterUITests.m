//
//  todomasterUITests.m
//  todomasterUITests
//
//  
//

#import <XCTest/XCTest.h>

@interface todomasterUITests : XCTestCase

@end

@implementation todomasterUITests

- (void)setUp {
    self.continueAfterFailure = NO;
}

- (void)tearDown {
}

- (void)testExample {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app launch];
}

- (void)testLaunchPerformance {
    if (@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *)) {
        [self measureWithMetrics:@[[[XCTApplicationLaunchMetric alloc] init]] block:^{
            [[[XCUIApplication alloc] init] launch];
        }];
    }
}

@end
