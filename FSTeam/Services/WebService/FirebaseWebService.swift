//
//  FirebaseWebService.swift
//  FSTeam
//
//  Created by Marat Galeev on 14/03/2019.
//  Copyright © 2019 Flatstack. All rights reserved.
//

import Foundation
import Firebase
import FirebaseCore

struct FirebaseWebService: WebService {
    
    // MARK: - Instance Properties
    
    let database = Database.database().reference()
    
    // MARK: - Instance Methods
    
    func get(_ type: ModelType, completion: ((_ response: [AnyObject]) -> Void)) {
        self.database.child(type.rawValue).observeSingleEvent(of: .value, with: { snapshot in
            
        })
    }
    
    func post() {
        
    }
}
