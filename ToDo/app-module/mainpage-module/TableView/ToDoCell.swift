//
//  TodoCell.swift
//  ToDo
//
//  Created by EDA BARUTÇU on 13.12.2021.
//

import UIKit

class ToDoCell: UITableViewCell {

    @IBOutlet weak var toDoLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var subView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        subView.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
