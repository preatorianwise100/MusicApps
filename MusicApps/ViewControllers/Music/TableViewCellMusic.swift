//
//  TableViewCellMusic.swift
//  MusicApps
//
//  Created by Jose David Bustos H on 2/22/20.
//  Copyright © 2020 Jose David Bustos H. All rights reserved.
//

import UIKit

class TableViewCellMusic: UITableViewCell {
   
    var linkMusic: MusicViewController?
    
    @IBOutlet weak var LblTrackName: UILabel!
    @IBOutlet weak var LblCollectionName: UILabel!
    @IBOutlet weak var imagenView: UIImageView!
    @IBOutlet weak var LblArtistName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//                let starButton = UIButton(type: .system)
//                starButton.setImage(#imageLiteral(resourceName: "fav_star"), for: .normal)
//                starButton.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
//        
//                starButton.tintColor = .red
//               // starButton.addTarget(self, action: #selector(handleMarkAsFavorite), for: .touchUpInside)
//        
//                accessoryView = starButton
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
//
//    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        let starButton = UIButton(type: .system)
//        starButton.setImage(#imageLiteral(resourceName: "fav_star"), for: .normal)
//        starButton.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
//
//        starButton.tintColor = .red
//        starButton.addTarget(self, action: #selector(handleMarkAsFavorite), for: .touchUpInside)
//
//        accessoryView = starButton
//    }
//
    @objc private func handleMarkAsFavorite() {
        //        print("Marking as favorite")
        linkMusic?.someMethodIWantToCall(cell: self)
    }
//
//    required init?(coder aDecoder: NSCoder) {
//        //fatalError("init(coder:) has not been implemented")
//    }
}
