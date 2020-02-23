//
//  MusicDetails.swift
//  MusicApps
//
//  Created by Jose David Bustos H on 2/22/20.
//  Copyright © 2020 Jose David Bustos H. All rights reserved.
//

import Foundation
import UIKit

class MusicDetails: UIViewController {
    
    @IBOutlet weak var imageViewDetails: UIImageView!
    
    @IBOutlet weak var LblTextDetails: UILabel!
    
    var nameString:String!
    var decripString:String!
    var imageString:String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        addNavagationButtonBack()
        
    }
    func addNavagationButtonBack()
    {
        let backButton = UIButton(type: .custom)
        backButton.setTitle("< Back", for: .normal)
        backButton.setTitleColor(backButton.tintColor, for: .normal) 
        backButton.addTarget(self, action: #selector(self.backAction(_:)), for: .touchUpInside)
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backButton)

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backAction(_ sender: UIButton) {
        let _ = self.dismiss(animated: true, completion: nil)
    }
    func updateUI() {
        //self.TitleLabel.text = nameString
        self.LblTextDetails.text = decripString
        self.LblTextDetails.numberOfLines = 6
        self.LblTextDetails.lineBreakMode = .byWordWrapping
        
        let imgURL = URL(string:imageString)
        
        let data = NSData(contentsOf: (imgURL)!)
        self.imageViewDetails.image = UIImage(data: data as! Data)
    }
}

