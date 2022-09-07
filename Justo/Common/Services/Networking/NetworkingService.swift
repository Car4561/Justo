//
//  NetworkingService.swift
//  Justo
//
//  Created by Carlos Alfredo Llerena Huayta on 7/09/22.
//

import Foundation
import JustoNetworking

final class NetworkingService {

    var configuration: ClientConfiguration! {
        return makeConfiguration()
    }
    
    // MARK: Private methods
    
    private func makeConfiguration() -> ClientConfiguration {
        let configuration = ClientConfiguration(baseURL: makeHost(),
                                                httpHeaders: makeHeaders())
        
        return configuration
    }
    
    private func makeHost() -> String {
       return Host.baseUrl
    }
    
    private func makeHeaders() -> [String: String] {
        [
            "Content-Type" : "application/json"
        ]
    }
}
