//
//  MainTabBarPresenter.swift
//  Justo
//
//  Created by Carlos Llerena on 07/09/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

class MainTabBarPresenter {

    weak var view: MainTabBarViewInput!
    var interactor: MainTabBarInteractorInput!
    var router: MainTabBarRouterInput!
}


// MARK: MainTabBarModuleInput methods

extension MainTabBarPresenter: MainTabBarModuleInput {

    func initializeModule() {
    }
}


// MARK: MainTabBarViewOutput methods

extension MainTabBarPresenter: MainTabBarViewOutput {

    func viewIsReady() {
    }
}


// MARK: MainTabBarInteractorOutput methods

extension MainTabBarPresenter: MainTabBarInteractorOutput {
}
