//
//  WebService.swift
//  FSTeam
//
//  Created by Marat Galeev on 14/03/2019.
//  Copyright © 2019 Flatstack. All rights reserved.
//

import Foundation

protocol WebService {
    
    // MARK: - Instance Methods
    
    func get(_ type: ModelType, completion: ((_ response: [AnyObject]) -> Void))
    func post()
}
