//
//  LoginViewModel.swift
//  igClone
//
//  Created by Christian Schmutte on 29.03.20.
//  Copyright © 2020 Christian Schmutte. All rights reserved.
//

import Foundation

class LogInViewModel: AlertPresentableViewModel {
    
    func logIn(username:String, password: String){
        // Perform the LogInUser mutation, passing the parameters we just got from our TextFields
        Network.shared.apollo.perform(mutation: LogInUserMutation(username: username, password: password)){ result in
            // Let's switch the result so we can separate a successful one from an error
            switch result {
            // In case of success
            case .success(let graphQLResult):
                // We try to parse our result
                if let sessionToken = graphQLResult.data?.logIn.sessionToken {
                    self.response = Response(true, sessionToken)
                    
                    // Write the sessionToken to our Keychain
                    let _: Bool = Session.session.writeToken(token: sessionToken)
                }
                    // but in case of any GraphQL errors we present that message
                else if let errors = graphQLResult.errors {
                    // GraphQL errors
                    
                    self.alertModel = AlertModel(message: errors.description, show: true)
                }
            // In case of failure, we present that message
            case .failure(let error):
                // Network or response format errors
                self.alertModel = AlertModel(message: error.localizedDescription, show: true)
            }
        }
    }
}
