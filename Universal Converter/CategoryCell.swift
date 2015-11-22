//
//  CategoryCell.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2015-11-21.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var vwButtonBackground: UIView!
    @IBOutlet weak var imgIcon: UIImageView!
    @IBOutlet weak var lblCategory: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        configureCellElements()
    }
    
    func configureCellElements() {
        vwButtonBackground.layer.cornerRadius = 4
        vwButtonBackground.clipsToBounds = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
