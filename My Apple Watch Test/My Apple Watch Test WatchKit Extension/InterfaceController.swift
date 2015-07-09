//
//  InterfaceController.swift
//  My Apple Watch Test WatchKit Extension
//
//  Created by Lorenz Hänggi on 09/03/15.
//  Copyright (c) 2015 Lorenz Hänggi. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var table: WKInterfaceTable!
    
    var emojis = EmojiObject.emojis();
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        self.table.setNumberOfRows(self.emojis.count, withRowType: "EmojiObject")
        for index in 0..<self.emojis.count {
            var emoji = self.table.rowControllerAtIndex(index) as! EmojiObject
            emoji.emojiLabel.setText(emojis[index][0])
            emoji.emojiDescription.setText(emojis[index][1])
        }
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
        
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        self.pushControllerWithName("ZoomEmojiController", context: self.emojis[rowIndex])
    }

}
