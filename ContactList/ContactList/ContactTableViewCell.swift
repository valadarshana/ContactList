//
//  ContactTableViewCell.swift
//  ContactList
//
//  Created by Vijay Parmar on 30/09/20.
//  Copyright © 2020 Dashu. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    @IBOutlet weak var imgProfilePic: UIImageView!
    @IBOutlet weak var lblNumber: UILabel!
    @IBOutlet weak var lblName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        imgProfilePic.layer.cornerRadius = 40
        imgProfilePic.layer.borderColor = UIColor.blue.cgColor
        imgProfilePic.layer.borderWidth = 1
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
