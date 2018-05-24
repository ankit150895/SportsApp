//
//  FixturesTableViewCell.swift
//  calculator
//
//  Created by Ankit Tanna on 23/05/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit

class FixturesTableViewCell: UITableViewCell {

    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var rightImgView: UIImageView!
    @IBOutlet weak var leftImgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
