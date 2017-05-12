//
//  SecondTableViewCell.swift
//  SimpleTablePractice
//
//  Created by LeoKao on 2017/5/12.
//  Copyright © 2017年 LeoKao. All rights reserved.
//

import UIKit

class SecondTableViewCell: UITableViewCell {
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myName: UILabel!
    @IBOutlet weak var myLocation: UILabel!
    @IBOutlet weak var myType: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
