//
//  CryptoTableViewCell.swift
//  CryptoCrazyRxMVVM
//
//  Created by Atakan Aktakka on 18.10.2023.
//

import UIKit

class CryptoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public var item : Crypro!{
        didSet{
            self.nameLabel.text = item.currency
            self.priceLabel.text = item.price
        }
    }

}
