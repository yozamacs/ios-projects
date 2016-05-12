//
//  ContactCollectionViewCell.swift
//  connectify
//
//  Created by Maryum Styles on 4/13/16.
//  Copyright © 2016 Maryum Styles. All rights reserved.
//

import UIKit

class ContactCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var contactButton: UIButton!
    @IBOutlet weak var lastNameLabel: UILabel!
    
    var number:String? //not sure if this is the correct way to do this

    func populateWithContact(contact: Contact) {
        firstNameLabel.text = contact.firstName
        lastNameLabel.text = contact.lastName
        number = contact.phoneNumber
    }
    
    @IBAction func callButton(sender: AnyObject) {
         UIApplication.sharedApplication().openURL((((NSURL(string: "tel:\(number)"))))!) //what if someone has no phone number?
    }

}

