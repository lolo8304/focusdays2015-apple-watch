//
//  EmojiObject.swift
//  My Apple Watch Test
//
//  Created by Lorenz Hänggi on 09/03/15.
//  Copyright (c) 2015 Lorenz Hänggi. All rights reserved.
//

import UIKit
import WatchKit

class EmojiObject: NSObject {
    
    class func emojis() -> Array<Array<String>> {
        let emojis = [ ["😄" , "smiley"], ["🐹" , "Hamster"], ["🏣" , "house"]]
        return emojis;
    }
    class func rand_emoji() -> Array<String> {
        sranddev()
        let rIndex = Int(rand())  % EmojiObject.emojis().count
        return EmojiObject.emojis()[rIndex]
    }
    
    @IBOutlet weak var emojiLabel: WKInterfaceLabel!
    @IBOutlet weak var emojiDescription: WKInterfaceLabel!
}
