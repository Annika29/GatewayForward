//
//  TableViewCell.swift
//  GatewayForward
//
//  Created by Annika Marthaler on 10/14/18.
//  Copyright © 2018 Pyi Theim Kyaw. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

   
    
    
    @IBOutlet weak var myImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
