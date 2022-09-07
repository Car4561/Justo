//
//  MainTabBarViewController.swift
//  Justo
//
//  Created by Carlos Llerena on 07/09/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    @IBOutlet weak var tabBarMenu: UITabBar!

    var output: MainTabBarViewOutput!


    // MARK: Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }
}


// MARK: MainTabBarViewInput Methods

extension MainTabBarViewController: MainTabBarViewInput {

    func setUpInitialState() {
    }

    func moduleInput() -> MainTabBarModuleInput {
        return output as! MainTabBarModuleInput
    }
}
