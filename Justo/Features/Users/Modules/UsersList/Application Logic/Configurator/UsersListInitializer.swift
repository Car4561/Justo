//
//  UsersListInitializer.swift
//  Justo
//
//  Created by Carlos Llerena on 07/09/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import Foundation

class UsersListModuleInitializer: NSObject {

    // TODO: Connect with object on storyboard
    @IBOutlet weak var usersListViewController: UsersListViewController!

    override func awakeFromNib() {
        super.awakeFromNib()

        let configurator = UsersListModuleConfigurator()
        configurator.configureModuleForViewInput(usersListViewController)
    }
}
