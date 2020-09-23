//
//  CustomTableViewCell.swift
//  MVVM-Custom-Table-View
//
//  Created by Fazle Rabbi Linkon on 23/9/20.
//  Copyright © 2020 Fazle Rabbi Linkon. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet var myLabel: UILabel!
    
    static let cellIdentifier = "CustomTableViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "CustomTableViewCell", bundle: nil)
    }
    
    public func configureCell(with viewModel: CellViewModel) {
        myLabel.text = "\(viewModel.firstName) \(viewModel.lastName)"
    }
    
}
