//
//  ConverterResultsCell.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2015-11-25.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import UIKit

class ConverterResultsCell: UITableViewCell {
    
    @IBOutlet weak var imgFlag: UIImageView!
    @IBOutlet weak var lblCategory: UILabel!
    @IBOutlet weak var lblResults: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
