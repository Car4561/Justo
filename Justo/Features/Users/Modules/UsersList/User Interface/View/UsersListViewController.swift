//
//  UsersListViewController.swift
//  Justo
//
//  Created by Carlos Llerena on 07/09/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import UIKit
import JustoUI

class UsersListViewController: UIViewController, NavigationBarStyle {

    var output: UsersListViewOutput!

    var usersList: [User] = [] {
        didSet {
            usersTableView.reloadData()
        }
    }
    
    // MARK: IBOutlets

    @IBOutlet weak var usersTableView: UITableView! {
        didSet {
            usersTableView.dataSource = self
            usersTableView.separatorStyle = .none
            usersTableView.backgroundColor = JustoColors.whiteBackground
            usersTableView.register(UsersListTableViewCell.self)
        }
    }
    

    // MARK: Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        primaryStyle()
        configureMainNavigation()
        output.viewIsReady()
    }
    
    func configureMainNavigation() {
        title = UsersStrings.title
        navigationController?.navigationBar.overrideUserInterfaceStyle = .dark
        navigationController?.navigationBar.barStyle = .black
    }
}

// MARK: TableView Delegate & Data source

extension UsersListViewController: UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        usersList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath) as UsersListTableViewCell
        let user = usersList[indexPath.row]
        cell.configure(with: user)
        return cell
    }
}
// MARK: UsersListViewInput Methods

extension UsersListViewController: UsersListViewInput, JustoActivityIndicatorPresentable {

    func setUpInitialState() {
    }

    func moduleInput() -> UsersListModuleInput {
        return output as! UsersListModuleInput
    }
    
    func setUserList(_ usersList: [User]) {
        self.usersList = usersList
    }
    
    func showActivityIndicatorView() {
        showJustoActivityIndicatorView()
    }
    
    func hideActivityIndicatorView() {
        hideJustoActivityIndicatorView()
    }
}
