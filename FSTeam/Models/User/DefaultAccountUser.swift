//
//  DefaultAccountUser.swift
//  FSTeam
//
//  Created by Timur Shafigullin on 28/02/2019.
//  Copyright © 2019 Flatstack. All rights reserved.
//

import Foundation

class DefaultAccountUser: AccountUser {

    // MARK: - Instance Properties

    var uid: String = ""

    var firstName: String?
    var lastName: String?

    var imageURL: URL?

    var email: String?
    var phoneNumber: String?
}
