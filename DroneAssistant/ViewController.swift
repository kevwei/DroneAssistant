//
//  ViewController.swift
//  DroneAssistant
//
//  Created by Kevin Wei on 4/30/16.
//  Copyright © 2016 Kevin Wei. All rights reserved.
//

import UIKit
import VideoSplashKit

class ViewController: VideoSplashViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Bundle path: ", NSBundle.mainBundle().bundlePath)
        
        let bundlePath = NSBundle.mainBundle().pathForResource("Resources", ofType: "bundle")
        let bundle = NSBundle(path: bundlePath!)
        let resource = bundle?.pathForResource("test", ofType: "mp4")
        
        let url = NSURL.fileURLWithPath(resource!)
        self.videoFrame = view.frame
        self.fillMode = .ResizeAspectFill
        self.alwaysRepeat = true
        self.sound = true
        self.startTime = 12.0
        self.duration = 4.0
        self.alpha = 0.7
        self.backgroundColor = UIColor.blackColor()
        self.contentURL = url
        self.restartForeground = true
    }
}

