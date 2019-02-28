//
//  AuthorizationService.swift
//  FSTeam
//
//  Created by Timur Shafigullin on 28/02/2019.
//  Copyright © 2019 Flatstack. All rights reserved.
//

import Foundation

protocol AuthorizationService {

    // MARK: - Instance Methods

    func signIn() -> AccountUser
}
