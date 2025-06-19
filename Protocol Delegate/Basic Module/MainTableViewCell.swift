//
//  MainTableViewCell.swift
//  Protocol Delegate
//
//  Created by Priya Gnaneshwaran on 13/05/25.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var baseView: UIView!
    @IBOutlet weak var sideView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.baseView.layer.masksToBounds = true
        self.baseView.layer.cornerRadius = 30
        self.sideView.layer.masksToBounds = true
        self.sideView.layer.cornerRadius = 30
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
