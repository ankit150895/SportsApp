//
//  FirstControllerTableViewCell.swift
//  calculator
//
//  Created by Ankit Tanna on 21/05/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit

class FirstControllerTableViewCell: UITableViewCell {

    
    @IBOutlet weak var myLabel: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
