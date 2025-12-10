//
//  ViewController.swift
//  WXChat
//
//  Created by mba on 2025/12/10.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        shell("bash", "-c", "open -n /Applications/WeChat.app")
        exit(0)
    }

    override var representedObject: Any? {
        didSet {
        }
    }


    func shell(_ args: String...) {
        let task = Process()
        task.launchPath = "/usr/bin/env"
        task.arguments = args
        task.launch()
        task.waitUntilExit()
    }
}

