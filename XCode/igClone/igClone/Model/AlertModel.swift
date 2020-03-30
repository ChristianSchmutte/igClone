//
//  AlertModel.swift
//  igClone
//
//  Created by Christian Schmutte on 29.03.20.
//  Copyright © 2020 Christian Schmutte. All rights reserved.
//

import Foundation

struct AlertModel {
    var title: String
    var message: String
    var button: String
    var show: Bool
    
    
    init(
        title: String = NSLocalizedString("alert_title_attention", comment: ""),
        message: String = NSLocalizedString("alert_title_attention", comment: ""),
        button: String = NSLocalizedString("alert_button_ok", comment: ""),
        show: Bool = false
    ) {
        self.title = title
        self.message = message
        self.button = button
        self.show = show
    }
}
