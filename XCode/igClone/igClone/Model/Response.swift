//
//  Response.swift
//  igClone
//
//  Created by Christian Schmutte on 29.03.20.
//  Copyright © 2020 Christian Schmutte. All rights reserved.
//

import Foundation

struct Response {
    var success: Bool
    var message: String
    
    init(_ success: Bool, _ message: String) {
        self.success = success
        self.message = message
    }
}
