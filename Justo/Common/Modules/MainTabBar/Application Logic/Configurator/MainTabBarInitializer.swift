//
//  MainTabBarInitializer.swift
//  Justo
//
//  Created by Carlos Llerena on 07/09/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import Foundation

class MainTabBarModuleInitializer: NSObject {

    // TODO: Connect with object on storyboard
    @IBOutlet weak var mainTabBarViewController: MainTabBarViewController!

    override func awakeFromNib() {
        super.awakeFromNib()

        let configurator = MainTabBarModuleConfigurator()
        configurator.configureModuleForViewInput(mainTabBarViewController)
    }
}
