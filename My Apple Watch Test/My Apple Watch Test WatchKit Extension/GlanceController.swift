//
//  GlanceController.swift
//  My Apple Watch Test WatchKit Extension
//
//  Created by Lorenz Hänggi on 09/03/15.
//  Copyright (c) 2015 Lorenz Hänggi. All rights reserved.
//

import WatchKit
import Foundation


class GlanceController: WKInterfaceController {

    @IBOutlet weak var zoomEmojiLabel: WKInterfaceLabel!
    @IBOutlet weak var zoomEmojiDescription: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        var s = EmojiObject.rand_emoji();
        
        let font = UIFont.systemFontOfSize(100)
        let zoomString = NSAttributedString(string: s[0], attributes: [NSFontAttributeName: font])
        
        self.zoomEmojiLabel.setAttributedText(zoomString)
        self.zoomEmojiDescription.setText("random emoji: "+s[1])

        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func handleUserActivity(userInfo: [NSObject : AnyObject]?) {
        NSLog("ffff")
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
