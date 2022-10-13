//
//  AppDelegate.m
//  221013_HelloMacOS
//
//  Created by 고도 on 2022/10/13.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *textLabel;
@property (weak) IBOutlet NSTextField *textField;

@property BOOL state;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    self.state = false; // 상태 값 저장하는 변수 초기화
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}

- (IBAction)tapSendMessageButton:(id)sender {
    if (!self.state) {
        self.textLabel.stringValue = @"안녕하세요! 😀";
    } else {
        self.textLabel.stringValue = @"안녕히계세요! 🙇‍♂️";
    }
    self.state = !self.state;
    
    NSLog(@"%@", self.textLabel.stringValue);
}

- (IBAction)tapReadMessageButton:(id)sender {
    // NSSpeechSynthesizer를 통해 TTS 기능 삽입
    NSSpeechSynthesizer *synthesizer = [[NSSpeechSynthesizer alloc] init];
    [synthesizer startSpeakingString:self.textLabel.stringValue];
}

- (IBAction)tapChangeMessageButton:(id)sender {
    self.textLabel.stringValue = self.textField.stringValue;
}

@end
