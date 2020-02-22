//
//  MusicViewController.swift
//  MusicApps
//
//  Created by Jose David Bustos H on 2/22/20.
//  Copyright © 2020 Jose David Bustos H. All rights reserved.
//

import Foundation
import UIKit

class MusicViewController: UIViewController,UITableViewDataSource ,UITableViewDelegate {
    
    @IBOutlet weak var searchers: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
     var  viewModelMusic = MusicViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewSetup()
        viewModelMusic.downloadMusicPopularAll()
        closureSetUp()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableViewSetup()  {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView()
    }
    
    func closureSetUp()  {
        viewModelMusic.reloadList = { [weak self] ()  in
            ///UI chnages in main tread
            DispatchQueue.main.async {
                self?.tableView.reloadData()
                // self?.activityIndicator.stopAnimating()
            }
        }
        viewModelMusic.errorMessage = { [weak self] (message)  in
            DispatchQueue.main.async {
                print(message)
                // self?.activityIndicator.stopAnimating()
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModelMusic.arrayOfList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? TableViewCellMusic else { return UITableViewCell() }
        
       
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("deberia abrir VCDetailsPopular")

        
    }
}
