//
//  AuthorizationServiceTests.swift
//  FSTeamTests
//
//  Created by Timur Shafigullin on 28/02/2019.
//  Copyright © 2019 Flatstack. All rights reserved.
//

import XCTest
@testable import FSTeam

class AuthorizationServiceTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSignIn() {
        // arrange
        let expectedUID: String = "123"

        let authorizationService = DefaultAuthorizationService()

        // act
        expectation(description: "<#T##String#>")
        let actualUser = authorizationService.signIn()

        // assert

        XCTAssertEqual(actualUser.uid, expectedUID)

    }
}
