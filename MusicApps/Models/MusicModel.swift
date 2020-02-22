//
//  MusicModel.swift
//  MusicApps
//
//  Created by Jose David Bustos H on 2/22/20.
//  Copyright © 2020 Jose David Bustos H. All rights reserved.
//

import Foundation

// MARK: - Empty
struct MusicModel: Codable {
    let resultCount: Int
    let results: [Result]
}

// MARK: - Result
struct Result: Codable {
    let wrapperType: String?
    let kind: String?
    let artistID: Int?
    let collectionID: Int?
    let trackID: Int?
    let artistName: String?
    let collectionName : String?
    let trackName: String?
    let collectionCensoredName: String?
    let trackCensoredName: String?
    let artistViewURL: String?
    let collectionViewURL: String?
    let trackViewURL: String?
    let previewURL: String?
    let artworkUrl30: String?
    let artworkUrl60: String?
    let artworkUrl100: String?
    let collectionPrice: Double?
    let trackPrice: Double?
    let collectionHDPrice:Double?
    let trackHDPrice: Double?
    let releaseDate: String
    let collectionExplicitness: String?
    let trackExplicitness: String?
    let Explicitness: String?
    let discCount: Int?
    let discNumber: Int?
    let trackCount: Int?
    let trackNumber: Int?
    let trackTimeMillis: Int?
    let country: String?
    let currency: String?
    let primaryGenreName: String?
    let contentAdvisoryRating: String?
    let shortDescription: String?
    let longDescription: String?
    let isStreamable: Bool?
    
//    enum CodingKeys: String, CodingKey {
//        case wrapperType, kind
//        case artistID = "artistId"
//        case collectionID = "collectionId"
//        case trackID = "trackId"
//        case artistName, collectionName, trackName, collectionCensoredName, trackCensoredName
//        case artistViewURL = "artistViewUrl"
//        case collectionViewURL = "collectionViewUrl"
//        case trackViewURL = "trackViewUrl"
//        case previewURL = "previewUrl"
//        case artworkUrl30, artworkUrl60, artworkUrl100, collectionPrice, trackPrice
//        case collectionHDPrice = "collectionHdPrice"
//        case trackHDPrice = "trackHdPrice"
//        case releaseDate, collectionExplicitness, trackExplicitness, discCount, discNumber, trackCount, trackNumber, trackTimeMillis, country, currency, primaryGenreName, contentAdvisoryRating, shortDescription, longDescription, isStreamable
//    }
}
//
//enum ArtistName: String, Codable {
//    case californication = "Californication"
//    case daysBetweenStations = "Days Between Stations"
//    case kells = "Kells"
//    case nirvana = "Nirvana"
//}
//
//enum Explicitness: String, Codable {
//    case notExplicit = "notExplicit"
//}
//
//enum Country: String, Codable {
//    case usa = "USA"
//}
//
//enum Currency: String, Codable {
//    case usd = "USD"
//}
//
//enum Kind: String, Codable {
//    case song = "song"
//    case tvEpisode = "tv-episode"
//}
//
//enum PrimaryGenreName: String, Codable {
//    case alternative = "Alternative"
//    case comedy = "Comedy"
//    case rock = "Rock"
//}
//
//enum WrapperType: String, Codable {
//    case track = "track"
//}
