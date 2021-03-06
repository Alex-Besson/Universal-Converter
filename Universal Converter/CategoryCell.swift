//
//  CategoryCell.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2015-11-21.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import UIKit
import AVFoundation

class CategoryCell: UITableViewCell {

    @IBOutlet weak var vwButtonBackground: UIView!
    @IBOutlet weak var imgIcon: UIImageView!
    @IBOutlet weak var lblCategory: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        configureCellElements()
        
    }
    
    func configureCellElements() {
        vwButtonBackground.layer.cornerRadius = 3
        
        vwButtonBackground.layer.shadowColor = UIColor.darkTextColor().CGColor
        vwButtonBackground.layer.shadowRadius = 2
        vwButtonBackground.layer.shadowOffset = CGSizeMake(0, 0)
        vwButtonBackground.layer.shadowOpacity = 1
    }
    
    func hideShadow() {
        vwButtonBackground.layer.shadowRadius = 0
        vwButtonBackground.layer.shadowOffset = CGSizeMake(0, 0)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
