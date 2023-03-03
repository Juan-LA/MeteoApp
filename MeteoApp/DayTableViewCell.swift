//
//  DayTableViewCell.swift
//  MeteoApp
//
//  Created by Juan Liut on 25/02/23.
//

import UIKit

class DayTableViewCell: UITableViewCell {
    
    @IBOutlet weak var dayLbl: UILabel!
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var tempLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
    }

}
