//
//  ViewModel.swift
//  igClone
//
//  Created by Christian Schmutte on 28.03.20.
//  Copyright © 2020 Christian Schmutte. All rights reserved.
//

import Foundation

protocol Updatable {
    var model: SignUpViewModel { get }
}

class SignUpViewModel: AlertPresentableViewModel {
    @Published var alertModel: AlertModel = AlertModel(title: "", message: "", show: false, button: "")
    
    var response: Response = Response(false, "")
    
    
    func signUp(username: String, password: String, email: String ){
        
        
        Network.shared.apollo.perform(mutation: SignUpUserMutation(username: username, password: password, email: email)){ result in
                   // Let's switch the result so we can separate a successful one from an error
                   switch result {
                       // In case of success
                       case .success(let graphQLResult):
                           // We try to parse our result
                        if let objId = graphQLResult.data?.signUp.id {
                            print(objId)
                            self.response = Response(true, objId)
                            
                           }
                           // but in case of any GraphQL errors we present that message
                           else if let errors = graphQLResult.errors {
                               // GraphQL errors
                            self.response = Response(false, errors.description)
                            self.alertModel = AlertModel(title: NSLocalizedString("alert_title_attention", comment: ""), message: errors.description, show: true, button: NSLocalizedString("alert_button_ok", comment: ""))
                           }
                       // In case of failure, we present that message
                       case .failure(let error):
                         // Network or response format errors
                        print(error.localizedDescription)
                        self.alertModel = AlertModel(title: NSLocalizedString("alert_title_attention", comment: ""), message: error.localizedDescription, show: true, button: NSLocalizedString("alert_button_ok", comment: ""))
                   }
               }
    }
    
}
