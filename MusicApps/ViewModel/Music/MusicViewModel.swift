//
//  MusicViewModel.swift
//  MusicApps
//
//  Created by Jose David Bustos H on 2/22/20.
//  Copyright © 2020 Jose David Bustos H. All rights reserved.
//

import Foundation
import UIKit

class  MusicViewModel {
    
    final let urlTotal = URL(string: "https://itunes.apple.com/search?term=in+utero&mediaType=music&limit=20")
    
    var reloadList = {() -> () in }
    var errorMessage = {(message : String) -> () in }
    
    var arrayOfList : [Result] = []{
        
        didSet{
            reloadList()
        }
    }
    
    func downloadMusicPopularAll(){
        
        guard let downloadURL = urlTotal else { return }
        URLSession.shared.dataTask(with: downloadURL) { data, urlResponse, error in
            guard let data = data, error == nil, urlResponse != nil else {
                print("algo fallo")
                return
            }
            print("descargado")
            do
            {
                let decoder = JSONDecoder()
                let downloadedMusic = try decoder.decode(MusicModel.self, from: data)
                
                self.arrayOfList = downloadedMusic.results
                print(self.arrayOfList)
                
            } catch {
                print("ocurrio un error despues de descarga")
            }
            }.resume()
        
        
    }
    func downloadMusicPopularByName(Name:String){
        
        guard let downloadURL = urlTotal else { return }
        URLSession.shared.dataTask(with: downloadURL) { data, urlResponse, error in
            guard let data = data, error == nil, urlResponse != nil else {
                print("algo fallo")
                return
            }
            print("descargado")
            do
            {
                let decoder = JSONDecoder()
                let downloadedMovies = try decoder.decode(MusicModel.self, from: data)
                
                self.arrayOfList = downloadedMovies.results
                print(self.arrayOfList)
                
            } catch {
                print("ocurrio un error despues de descarga")
            }
            }.resume()
        
        
    }
    
    
}
