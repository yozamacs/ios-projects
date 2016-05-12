//
//  Contact.swift
//  connectify
//
//  Created by Maryum Styles on 4/11/16.
//  Copyright © 2016 Maryum Styles. All rights reserved.
//

import UIKit

class Contact{
    var firstName: String
    var lastName: String
    var phoneNumber: String
    
    init?(firstName: String, lastName: String, phoneNumber: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.phoneNumber = phoneNumber
        
        if(firstName.isEmpty || lastName.isEmpty) {
            return nil
        }
    }
    
}
