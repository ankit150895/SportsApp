//
//  ThirdContainerTableViewCell.swift
//  calculator
//
//  Created by Ankit Tanna on 21/05/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit

class ThirdContainerTableViewCell: UITableViewCell {
    @IBOutlet weak var myTextView: UITextView!
    @IBOutlet weak var myImageViw: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
