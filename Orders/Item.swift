//
//  Item.swift
//  Orders
//
//  Created by Mark Nashed on 10/28/23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
