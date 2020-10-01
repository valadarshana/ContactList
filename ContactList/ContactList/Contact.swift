//
//  Contact.swift
//  ContactList
//
//  Created by Vijay Parmar on 01/10/20.
//  Copyright © 2020 Dashu. All rights reserved.
//

import UIKit

class Contact: UITableViewCell {
    
    
    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblNumber: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imgProfile.layer.cornerRadius=40
        imgProfile.layer.borderWidth=1
        imgProfile.layer.borderColor=UIColor.blue.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
