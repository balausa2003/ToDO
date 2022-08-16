//
//  ItemTableViewCell.swift
//  TodoList
//
//  Created by Балауса Косжанова on 08.08.2022.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
