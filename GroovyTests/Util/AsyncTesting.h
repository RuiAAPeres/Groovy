//
//  AsyncTesting.h
//  Groovy
//
//  Created by Rui Peres on 31/08/2014.
//  Copyright (c) 2014 RP. All rights reserved.
//

// Taken from here: http://blog.dadabeatnik.com/2013/09/12/xcode-and-asynchronous-unit-testing/

// Macro - Set the flag for block completion
#define StartBlock() __block BOOL waitingForBlock = YES

// Macro - Set the flag to stop the loop
#define EndBlock() waitingForBlock = NO

// Macro - Wait and loop until flag is set
#define WaitUntilBlockCompletes() WaitWhile(waitingForBlock)

// Macro - Wait for condition to be NO/false in blocks and asynchronous calls
// Each test should have its own instance of a BOOL condition because of non-thread safe operations
#define WaitWhile(condition) \
do { \
while(condition) { \
[[NSRunLoop currentRunLoop] runMode:NSDefaultRunLoopMode beforeDate:[NSDate dateWithTimeIntervalSinceNow:0.1]]; \
} \
} while(0)