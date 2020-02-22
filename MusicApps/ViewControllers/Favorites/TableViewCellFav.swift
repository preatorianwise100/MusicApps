//
//  TableViewCellFav.swift
//  MusicApps
//
//  Created by Jose David Bustos H on 2/22/20.
//  Copyright © 2020 Jose David Bustos H. All rights reserved.
//

import UIKit

class TableViewCellFav: UITableViewCell {

    @IBOutlet weak var imageViews: UIImageView!
    
    @IBOutlet weak var LblCollections: UILabel!
    
    @IBOutlet weak var LblArtistNames: UILabel!
    @IBOutlet weak var LblTrack: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
