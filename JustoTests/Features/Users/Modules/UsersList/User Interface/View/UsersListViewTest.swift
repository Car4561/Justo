//
//  UsersListViewTest.swift
//  Justo
//
//  Created by Carlos Llerena on 07/09/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import Nimble
import Quick

@testable import Justo

final class UsersListViewTest: QuickSpec {

    override func spec() {
        beforeEach {
        }

        afterEach {
        }

        describe("A UsersList View") {
        }
    }


    // MARK: Mock Classes

    private class MockOutput: UsersListViewOutput {

        var viewIsReadyCount = 0

        func viewIsReady() {
            viewIsReadyCount += 1
        }
    }
}
