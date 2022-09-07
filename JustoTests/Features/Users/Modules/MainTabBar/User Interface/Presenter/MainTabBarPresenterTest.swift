//
//  MainTabBarPresenterTest.swift
//  Justo
//
//  Created by Carlos Llerena on 07/09/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import Nimble
import Quick

@testable import Justo

final class MainTabBarPresenterTest: QuickSpec {

    override func spec() {
        beforeEach {
        }

        afterEach {
        }

        describe("A MainTabBar Presenter") {
        }
    }


    // MARK: Mock Classes

    private class MockInteractor: MainTabBarInteractorInput {
    }

    private class MockRouter: MainTabBarRouterInput {
    }

    private class MockView: MainTabBarViewInput {

        func setUpInitialState() {
        }

        func moduleInput() -> MainTabBarModuleInput {

            return MainTabBarPresenter()
	    }
    }
}
