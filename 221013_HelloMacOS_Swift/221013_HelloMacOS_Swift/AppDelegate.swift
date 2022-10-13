//
//  AppDelegate.swift
//  221013_HelloMacOS_Swift
//
//  Created by 고도 on 2022/10/13.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet var window: NSWindow!
    @IBOutlet weak var textLabel: NSTextField!
    @IBOutlet weak var sendButton: NSButton!
    @IBOutlet weak var textField: NSTextField!
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }

    @IBAction func tapSendMessageButton(_ sender: Any) {
        let message = self.textField.stringValue
        self.textLabel.stringValue = message
        readMessage(message)
    }
    
    func readMessage(_ message: String) {
        let synthesizer: NSSpeechSynthesizer = NSSpeechSynthesizer()
        synthesizer.startSpeaking(message)
    }
    
    
    
}

