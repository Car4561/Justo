//
//  MainTabBarViewTest.swift
//  Justo
//
//  Created by Carlos Llerena on 07/09/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import Nimble
import Quick

@testable import Justo

final class MainTabBarViewTest: QuickSpec {

    override func spec() {
        beforeEach {
        }

        afterEach {
        }

        describe("A MainTabBar View") {
        }
    }


    // MARK: Mock Classes

    private class MockOutput: MainTabBarViewOutput {

        var viewIsReadyCount = 0

        func viewIsReady() {
            viewIsReadyCount += 1
        }
    }
}
