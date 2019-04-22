//
//  TestsCell.swift
//  Smart-Project
//
//  Created by Omid on 22.04.19.
//  Copyright © 2019 Omid. All rights reserved.
//

import UIKit

class TestsCell: UITableViewCell {
    
    @IBOutlet weak var testImage : UIImageView!
    @IBOutlet weak var testTitle : UILabel!
    @IBOutlet weak var testDisc : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
