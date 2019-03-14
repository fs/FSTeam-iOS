//
//  AccountUser.swift
//  FSTeam
//
//  Created by Timur Shafigullin on 28/02/2019.
//  Copyright © 2019 Flatstack. All rights reserved.
//

import Foundation

protocol AccountUser: AnyObject {

    // MARK: - Instance Properties

    var uid: String { get set }

    var firstName: String? { get set }
    var lastName: String? { get set }

    var imageURL: URL? { get set }
    
    var email: String? { get set }
    var phoneNumber: String? { get set }
}
