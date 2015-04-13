//
//  WatchKitInfo.swift
//  PlayThatSong
//
//  Created by Ben Cochrane on 4/12/15.
//  Copyright (c) 2015 benCochrane. All rights reserved.
//

import Foundation

let key = "FunctionRequestKey"

class WatchKitInfo {
    
    var replyBlock: ([NSObject : AnyObject]!) -> Void
    var playerRequest: String?
    
    init (playerDictionary: [NSObject : AnyObject], reply: ([NSObject : AnyObject]!) -> Void) {
        
        if let playerDictionary = playerDictionary as? [String : String] {
            playerRequest = playerDictionary[key]
        } else {
            println("No Information Error")
        }
        
        replyBlock = reply
    }
    
}