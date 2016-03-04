//
//  CustomCell.swift
//  NativeCrossApp
//
//  Created by Alberto Pasca on 04/03/16.
//  Copyright © 2016 Giacomo Sortino. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet var leftImage:   UIImageView!
    @IBOutlet var topLabel:    UILabel!
    @IBOutlet var bottomLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
