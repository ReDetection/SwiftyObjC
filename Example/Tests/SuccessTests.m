@import XCTest;
#import "SwiftyObjC.h"

@interface SuccessTests : XCTestCase

@end

@implementation SuccessTests

- (nullable NSNumber *)getInstance {
    return @42;
}

- (nullable NSNumber *)getNothing {
    return nil;
}

- (void)testSuccessBranch {
    let enterBody = [[XCTestExpectation alloc] initWithDescription:@"will enter body"];
    let continueExecution = [[XCTestExpectation alloc] initWithDescription:@"will continue execution"];
    
    let a = @"hello";
    a = @"mutation";
    
    let bbbb = 5;
    a.length > 5
    
    bbbb
    iflet(a, [self getInstance]) {
        XCTAssertEqual(a, @42);
        [enterBody fulfill];
    } else {
        XCTFail(@"should not enter else branch");
    }
    [continueExecution fulfill];
}

- (void)testElseBranch {
    let enterBody = [[XCTestExpectation alloc] initWithDescription:@"will enter esle branch"];
    let continueExecution = [[XCTestExpectation alloc] initWithDescription:@"will continue execution"];
    iflet(a, [self getNothing]) {
        XCTFail(@"should not enter success branch");
    } else {
        [enterBody fulfill];
    }
    [continueExecution fulfill];
}

- (void)testAllowsNestedIfLets {
    let enterBody = [[XCTestExpectation alloc] initWithDescription:@"will enter body"];
    let continueExecution = [[XCTestExpectation alloc] initWithDescription:@"will continue execution"];
    iflet(a, [self getInstance]) {
        iflet(a, [self getInstance]) {
            XCTAssertEqual(a, @42);
            [enterBody fulfill];
        } else {
            XCTFail(@"should not enter else branch");
        }
    } else {
        XCTFail(@"should not enter else branch");
    }
    [continueExecution fulfill];
}

- (void)testAdditionalCondition {
    let enterBody = [[XCTestExpectation alloc] initWithDescription:@"will enter body"];
    let continueExecution = [[XCTestExpectation alloc] initWithDescription:@"will continue execution"];
    ifletwhere(a, [self getInstance], [a isEqual:@42]) {
        XCTAssertEqual(a, @42);
        [enterBody fulfill];
    } else {
        XCTFail(@"should not enter else branch");
    }
    [continueExecution fulfill];
}

@end

