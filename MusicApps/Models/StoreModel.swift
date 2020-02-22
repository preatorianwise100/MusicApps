//
//  StoreModel.swift
//  MusicApps
//
//  Created by Jose David Bustos H on 2/22/20.
//  Copyright © 2020 Jose David Bustos H. All rights reserved.
//

import Foundation
struct StoreModel: Codable {
    let wrapperType: WrapperType
    let kind: Kind
    let artistID, collectionID, trackID: Int
    let artistName: ArtistName
    let collectionName, trackName, collectionCensoredName, trackCensoredName: String
    let artistViewURL, collectionViewURL, trackViewURL: String
    let previewURL: String
    let artworkUrl30, artworkUrl60, artworkUrl100: String
    let collectionPrice, trackPrice: Double
    let collectionHDPrice, trackHDPrice: Double?
    let releaseDate: Date
    let collectionExplicitness, trackExplicitness: Explicitness
    let discCount, discNumber, trackCount, trackNumber: Int
    let trackTimeMillis: Int
    let country: Country
    let currency: Currency
    let primaryGenreName: PrimaryGenreName
    let contentAdvisoryRating, shortDescription, longDescription: String?
    let isStreamable: Bool?
}
