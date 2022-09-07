//
//  UsersListViewInput.swift
//  Justo
//
//  Created by Carlos Llerena on 07/09/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

protocol UsersListViewInput: AnyObject {

    func setUpInitialState()
    func moduleInput() -> UsersListModuleInput
    func setUserList(_ userList: [User])
    func showActivityIndicatorView()
    func hideActivityIndicatorView()
}
