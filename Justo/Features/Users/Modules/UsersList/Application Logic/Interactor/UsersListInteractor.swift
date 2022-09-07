//
//  UsersListInteractor.swift
//  Justo
//
//  Created by Carlos Llerena on 07/09/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import Combine
import Foundation

class UsersListInteractor: UsersListInteractorInput {


    weak var output: UsersListInteractorOutput!
    lazy var networkingService: NetworkingService = NetworkingService()
    lazy var userClient: UsersClientProvider = UsersClient(configuration: NetworkingService().configuration)
    var cancellables: Set<AnyCancellable> = []

    func getUsersList() {
        userClient.userList()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { [weak self] completion in
                switch completion {
                case .failure(let networkingError):
                    switch networkingError {
                    case .notConnectionInternet(_):
                        self?.output.didFailFetchUsers()
                    case .unexpectedError(_):
                        self?.output.didFailFetchUsers()
                    default:
                        self?.output.didFailFetchUsers()
                    }
                default:
                    break
                }
            }, receiveValue: { [weak self] response in
                self?.output.didFetchUsers(response.results)
            }).store(in: &cancellables)
    }
    
}
