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
    var filteredExercises = [String]()
    
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
        
        let listObj = viewModelMusic.arrayOfList[indexPath.row]
        
        cell.LblTrackName.text = listObj.trackName
        cell.LblCollectionName.text = listObj.collectionName
        cell.LblArtistName.text =  listObj.artistName
  
        var paths = listObj.artworkUrl100
        if let imageURL = URL(string:paths!) {
            print(imageURL)
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: imageURL)
                if let data = data {
                    let image = UIImage(data: data)
                    DispatchQueue.main.async {
                        cell.imagenView.image = image
                    }
                }
            }
        }
       
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("deberia abrir Details")

//        let listObj = viewModelMusic.arrayOfList[indexPath.row]
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let controller = storyboard.instantiateViewController(withIdentifier: "MusicDetails") as! MusicDetails
//        controller.nameString = listObj.collectionCensoredName
//        controller.decripString = listObj.artistName
//        controller.imageString = listObj.artworkUrl100
//
//        self.present(controller, animated: true, completion: nil)
//
//
        let listObj = viewModelMusic.arrayOfList[indexPath.row]
       //let storyboard = UIStoryboard(name: "Main", bundle: nil)
       let myVC = self.storyboard?.instantiateViewController(withIdentifier: "MusicDetails")  as! MusicDetails
        myVC.nameString = listObj.collectionCensoredName
        myVC.decripString = listObj.artistName
        myVC.imageString = listObj.artworkUrl100
        let navController = UINavigationController(rootViewController: myVC)
        self.navigationItem.backBarButtonItem = UIBarButtonItem(image: UIImage(named: "back_arrow"), style: .plain, target: MusicDetails.self, action: nil)
        self.navigationController?.present(navController, animated: true, completion: nil)
       
        
    }
}
