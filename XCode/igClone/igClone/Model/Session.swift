//
//  Session.swift
//  igClone
//
//  Created by Christian Schmutte on 30.03.20.
//  Copyright © 2020 Christian Schmutte. All rights reserved.
//

import Foundation

class Session {
    var sessionToken: String = ""
    
    static let session = Session()
    
    func writeToken(token: String) -> Bool {
        let key = token
        let tag = "com.Christian-Schmutte.igClone.keys.mykey".data(using: .utf8)!
        let addquery: [String: Any] = [kSecClass as String: kSecClassKey,
                                       kSecAttrApplicationTag as String: tag,
                                       kSecValueRef as String: key]
        
        let status = SecItemAdd(addquery as CFDictionary, nil)
        return status == errSecSuccess
    }
}
