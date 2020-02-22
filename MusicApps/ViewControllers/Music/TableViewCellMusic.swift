//
//  TableViewCellMusic.swift
//  MusicApps
//
//  Created by Jose David Bustos H on 2/22/20.
//  Copyright © 2020 Jose David Bustos H. All rights reserved.
//

import UIKit

class TableViewCellMusic: UITableViewCell {
   
    @IBOutlet weak var LblTrackName: UILabel!
    
    @IBOutlet weak var LblCollectionName: UILabel!
    @IBOutlet weak var imagenView: UIImageView!
    @IBOutlet weak var LblArtistName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
