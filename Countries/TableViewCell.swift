//
//  TableViewCell.swift
//  Countries
//
//  Created by DDUKK7 on 13/10/22.
//

import UIKit
struct PlayersList{
    var name:String;
}

class TableViewCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var labL: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

    
    
}
