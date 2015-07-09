//
//  ZoomEmojiController.swift
//  My Apple Watch Test
//
//  Created by Lorenz Hänggi on 09/03/15.
//  Copyright (c) 2015 Lorenz Hänggi. All rights reserved.
//

import WatchKit
import Foundation


class ZoomEmojiController: WKInterfaceController {

    @IBOutlet weak var zoomEmojiLabel: WKInterfaceLabel!
    
    @IBOutlet weak var zoomEmojiDescription: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        var s = context as! Array<String>
        
        var font = UIFont.systemFontOfSize(100)
        var zoomString = NSAttributedString(string: s[0], attributes: [NSFontAttributeName: font])

        self.zoomEmojiLabel.setAttributedText(zoomString)
        self.zoomEmojiDescription.setText(s[1])
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
