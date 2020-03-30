//
//  AlertPresentableViewModel.swift
//  igClone
//
//  Created by Christian Schmutte on 29.03.20.
//  Copyright © 2020 Christian Schmutte. All rights reserved.
//

import Foundation

class AlertPresentableViewModel: BaseResponseViewModel {
    @Published var alertModel: AlertModel = AlertModel() {
        willSet { self.objectWillChange.send() }
    }
    
}
