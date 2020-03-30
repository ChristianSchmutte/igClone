//
//  BaseResponseViewModel.swift
//  igClone
//
//  Created by Christian Schmutte on 30.03.20.
//  Copyright © 2020 Christian Schmutte. All rights reserved.
//

import Foundation

class BaseResponseViewModel: ObservableObject {
    @Published var response: Response = Response(false, "")
}
