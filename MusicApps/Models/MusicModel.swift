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
    let wrapperType: WrapperType
    let kind: Kind
    let artistID, collectionID, trackID: Int
    let artistName: ArtistName
    let collectionName : String
    let trackName: String
    let collectionCensoredName: String
    let trackCensoredName: String
    let artistViewURL: String
    let collectionViewURL: String
    let trackViewURL: String
    let previewURL: String
    let artworkUrl30: String
    let artworkUrl60: String
    let artworkUrl100: String
    let collectionPrice, trackPrice: Double
    let collectionHDPrice, trackHDPrice: Double?
    let releaseDate: Date
    let collectionExplicitness, trackExplicitness: Explicitness
    let discCount, discNumber, trackCount, trackNumber: Int
    let trackTimeMillis: Int
    let country: Country
    let currency: Currency
    let primaryGenreName: PrimaryGenreName
    let contentAdvisoryRating: String
    let shortDescription: String
    let longDescription: String?
    let isStreamable: Bool?
    
    enum CodingKeys: String, CodingKey {
        case wrapperType, kind
        case artistID = "artistId"
        case collectionID = "collectionId"
        case trackID = "trackId"
        case artistName, collectionName, trackName, collectionCensoredName, trackCensoredName
        case artistViewURL = "artistViewUrl"
        case collectionViewURL = "collectionViewUrl"
        case trackViewURL = "trackViewUrl"
        case previewURL = "previewUrl"
        case artworkUrl30, artworkUrl60, artworkUrl100, collectionPrice, trackPrice
        case collectionHDPrice = "collectionHdPrice"
        case trackHDPrice = "trackHdPrice"
        case releaseDate, collectionExplicitness, trackExplicitness, discCount, discNumber, trackCount, trackNumber, trackTimeMillis, country, currency, primaryGenreName, contentAdvisoryRating, shortDescription, longDescription, isStreamable
    }
}

enum ArtistName: String, Codable {
    case californication = "Californication"
    case daysBetweenStations = "Days Between Stations"
    case kells = "Kells"
    case nirvana = "Nirvana"
}

enum Explicitness: String, Codable {
    case notExplicit = "notExplicit"
}

enum Country: String, Codable {
    case usa = "USA"
}

enum Currency: String, Codable {
    case usd = "USD"
}

enum Kind: String, Codable {
    case song = "song"
    case tvEpisode = "tv-episode"
}

enum PrimaryGenreName: String, Codable {
    case alternative = "Alternative"
    case comedy = "Comedy"
    case rock = "Rock"
}

enum WrapperType: String, Codable {
    case track = "track"
}
