//
//  UsersListPresenter.swift
//  Justo
//
//  Created by Carlos Llerena on 07/09/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

class UsersListPresenter {

    weak var view: UsersListViewInput!
    var interactor: UsersListInteractorInput!
    var router: UsersListRouterInput!
}


// MARK: UsersListModuleInput methods

extension UsersListPresenter: UsersListModuleInput {

    func initializeModule() {
    }
}


// MARK: UsersListViewOutput methods

extension UsersListPresenter: UsersListViewOutput {

    func viewIsReady() {
        view.showActivityIndicatorView()
        interactor.getUsersList()
    }
}


// MARK: UsersListInteractorOutput methods

extension UsersListPresenter: UsersListInteractorOutput {

    func didFetchUsers(_ usersList: [User]) {
        view.hideActivityIndicatorView()
        view.setUserList(usersList)
    }
    
    func didFailFetchUsers() {
        view.hideActivityIndicatorView()
    }
}
