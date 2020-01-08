//
//  TestingTableViewCell.swift
//  TestTableCellXib
//
//  Created by TechFun on 5/2/19.
//  Copyright © 2019 ThantZin. All rights reserved.
//

import UIKit

class TestingTableViewCell: UITableViewCell {

    @IBOutlet weak var namelbl: UILabel!
    @IBOutlet weak var agelbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
