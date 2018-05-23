//
//  SecondControllerSecondTableViewCell.swift
//  calculator
//
//  Created by Ankit Tanna on 23/05/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit

class SecondControllerSecondTableViewCell: UITableViewCell {

    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var firstDetail: UILabel!
    @IBOutlet weak var secondDetail: UILabel!
    @IBOutlet weak var thirdDetail: UILabel!
    @IBOutlet weak var fourthDetail: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
