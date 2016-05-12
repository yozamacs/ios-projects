//
//  ContactTableViewCell.swift
//  connectify
//
//  Created by Maryum Styles on 4/11/16.
//  Copyright © 2016 Maryum Styles. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {
    // MARK: Properties
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var phoneButton: UIButton!
    @IBOutlet weak var lastNameLabel: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
