# tuist-bug-demo

Copied from submitted [issue](https://github.com/tuist/tuist/issues/2747):

### Describe the bug
`tuist generate` tries to access iOS device when resolving package dependencies using `xcodebuild`. `xcodebuild` shows device access related errors if the iOS device is not unlocked when plugged in. See attached txt for full logs.

[tuist_logs.txt](https://github.com/tuist/tuist/files/6225204/tuist_logs.txt)

### To Reproduce
Steps to reproduce the behavior:

1. Clone this repo for a reproducible test case.
2. Plug in an iOS device and make sure you don't unlock it while doing it
3. cd into the test case folder and run `tuist generate`
4. See error

### Expected behavior
tuist generate shouldn't trigger xcodebuild device access errors?

### Desktop (please complete the following information):

OS: macOS
Version: 10.15.7

### Additional context
The error happens in both Xcode 12.4 and 12.3. It doesn't seem to have any impact on building and running the generated project.