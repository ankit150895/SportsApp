//
//  MenuTableViewCell.swift
//  calculator
//
//  Created by Apple on 18/04/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    @IBOutlet weak var MenuCellBackGround: UIImageView!
    @IBOutlet weak var menuLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        MenuCellBackGround.image = selected ? #imageLiteral(resourceName: "LightGreyBG") : #imageLiteral(resourceName: "HeaderDarkBG")
        // Configure the view for the selected state
    }

}
