//
//  AppDelegate.swift
//  Swift-AppleScriptObjC
//

import Cocoa
import AppleScriptObjC

@objc(NSObject) protocol musicBridge {
    func playPause()
    func gotoPreviousTrack()
    func gotoNextTrack()
}

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    let forwardIcon = NSStatusBar.system.statusItem(withLength:NSStatusItem.squareLength)
    let playPauseIcon = NSStatusBar.system.statusItem(withLength:NSStatusItem.squareLength)
    let backwardIcon = NSStatusBar.system.statusItem(withLength:NSStatusItem.squareLength)
    
    var musicBridge: musicBridge
    
    override init() {
        Bundle.main.loadAppleScriptObjectiveCScripts()
        let musicBridgeClass: AnyClass = NSClassFromString("musicBridge")!
        self.musicBridge = musicBridgeClass.alloc() as! musicBridge
        super.init()
    }
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        if let button = forwardIcon.button {
            button.image = NSImage(named: "forward")
            forwardIcon.button?.action = #selector(gotoNextTrack)
            button.sendAction(on: [.leftMouseUp, .rightMouseUp])
        }
        if let button = playPauseIcon.button {
            button.image = NSImage(named: "pause")
            playPauseIcon.button?.action = #selector(playPause)
            button.sendAction(on: [.leftMouseUp, .rightMouseUp])
        }
        if let button = backwardIcon.button {
            button.image = NSImage(named: "rewind")
            backwardIcon.button?.action = #selector(gotoPreviousTrack)
            button.sendAction(on: [.leftMouseUp, .rightMouseUp])
        }
    }

    func applicationWillTerminate(_ aNotification: Notification) {
    }
    
    
    @IBAction func playPause(_ sender: Any) {
        self.musicBridge.playPause()
    }
    
    @IBAction func gotoPreviousTrack(_ sender: Any) {
        self.musicBridge.gotoPreviousTrack()
    }
    
    @IBAction func gotoNextTrack(_ sender: Any) {
        self.musicBridge.gotoNextTrack()
    }
}
