//
//  Network.swift
//  igClone
//
//  Created by Christian Schmutte on 29.03.20.
//  Copyright © 2020 Christian Schmutte. All rights reserved.
//

import Foundation
import Apollo
class Network {
    static let shared = Network()
    
    private lazy var networkTransport: HTTPNetworkTransport = {
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = [
            "X-Parse-Application-Id": "tbGY1x8zNFNVS6AlRpGwH7HBLSlKUhp8iS9C5o8d",
            "X-Parse-Client-Key": "VtZvoqxtVB6keuanlQpZtHVxivIXvuqdeFpEvSHK"
        ]
        
        let url = URL(string: "https://parseapi.back4app.com/graphql")!
        
        
        let transport =  HTTPNetworkTransport(url: url, session: URLSession(configuration: configuration), sendOperationIdentifiers: false, useGETForQueries: false, enableAutoPersistedQueries: false, useGETForPersistedQueryRetry: false, requestCreator: ApolloRequestCreator())
        
        self.networkTransport = transport
        return transport
    }()
    
    private (set) lazy var apollo = ApolloClient(networkTransport: networkTransport)
}
