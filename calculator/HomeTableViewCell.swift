//
//  HomeTableViewCell.swift
//  calculator
//
//  Created by TryCatch Classes on 08/05/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var homeCellLabel: UILabel!
    @IBOutlet weak var homeCellimgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        homeCellLabel.backgroundColor = selected ? #colorLiteral(red: 0.1840000004, green: 0.202000007, blue: 0.2189999968, alpha: 1) : #colorLiteral(red: 0.1840000004, green: 0.202000007, blue: 0.2189999968, alpha: 1)
        // Configure the view for the selected state#colorLiteral(red: 0.1840000004, green: 0.202000007, blue: 0.2189999968, alpha: 1)
    }

}
