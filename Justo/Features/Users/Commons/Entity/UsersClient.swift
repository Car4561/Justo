//
//  UsersClient.swift
//  Justo
//
//  Created by Carlos Alfredo Llerena Huayta on 7/09/22.
//

import Combine
import JustoNetworking
import Foundation

protocol UsersClientProvider {
    func userList() -> AnyPublisher<UserListResponse, NetworkingError>
}

final class UsersClient: RestClient, UsersClientProvider {
    func userList() -> AnyPublisher<UserListResponse, NetworkingError> {
        request(resource: UsersResource.users, type: UserListResponse.self, errorType: ErrorResponse.self)
    }
}
