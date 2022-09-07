//
//  UsersListPresenterTest.swift
//  Justo
//
//  Created by Carlos Llerena on 07/09/2022.
//  Copyright © 2022 Carlos Lorena. All rights reserved.
//

import Nimble
import Quick

@testable import Justo

final class UsersListPresenterTest: QuickSpec {

    override func spec() {
        beforeEach {
        }

        afterEach {
        }

        describe("A UsersList Presenter") {
        }
    }


    // MARK: Mock Classes

    private class MockInteractor: UsersListInteractorInput {
    }

    private class MockRouter: UsersListRouterInput {
    }

    private class MockView: UsersListViewInput {

        func setUpInitialState() {
        }

        func moduleInput() -> UsersListModuleInput {

            return UsersListPresenter()
	    }
    }
}
