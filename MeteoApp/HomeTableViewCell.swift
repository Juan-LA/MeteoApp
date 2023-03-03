//
//  HomeTableViewCell.swift
//  MeteoApp
//
//  Created by Juan Liut on 25/02/23.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cityImg: UIImageView!
    
    @IBOutlet weak var icon: UIImageView!
    
    @IBOutlet weak var weather: UILabel!
    
    @IBOutlet weak var temp: UILabel!
    
    @IBOutlet weak var city: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
