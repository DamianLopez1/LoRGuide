//
//  CardImageTableViewCell.swift
//  Stats Of Runeterra
//
//  Created by Damian Lopez on 6/16/20.
//  Copyright © 2020 Damian Lopez. All rights reserved.
//

import UIKit
import Combine

class CardImageTableViewCell: UITableViewCell {
    var loadImageCancellable: AnyCancellable?
    
    @IBOutlet weak var cardImage: UIImageView!
    override func prepareForReuse() {
        loadImageCancellable?.cancel()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
