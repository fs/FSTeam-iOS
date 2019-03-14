//
//  Employer.swift
//  FSTeam
//
//  Created by Marat Galeev on 14/03/2019.
//  Copyright © 2019 Flatstack. All rights reserved.
//

import Foundation

protocol Employer: AnyObject {
    
    // MARK: - Instance Properties
    
    var uid: String { get set }
    
    var firstName: String? { get set }
    var lastName: String? { get set }
    
    var email: String? { get set }
    var phoneNumber: String? { get set }
    
    var birthday: Date? { get set }
    
    var photoImageURL: URL? { get set }
}
