//
//  UsersListConfigurator.swift
//  Justo
//
//  Created by Carlos Llerena on 07/09/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

class UsersListModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(_ viewInput: UIViewController) {

        if let viewController = viewInput as? UsersListViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: UsersListViewController) {

        let router = UsersListRouter()

        let presenter = UsersListPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = UsersListInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }
}
