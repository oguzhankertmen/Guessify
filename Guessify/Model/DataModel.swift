//
//  DataModel.swift
//  Guessify
//
//  Created by Oğuzhan KERTMEN on 19.02.2022.
//

import Foundation

struct Result: Codable{
    let data: [ResultItem]
}

struct ResultItem: Codable{
    let genre: String
    let tracks: [Tracks]
}

struct Tracks: Codable{
    
    let wrapperType: String
    let kind: String
    let artistId: Int
    let collectionId: Int
    let trackId: Int
    let artistName: String
    let collectionName: String
    let trackName: String
    let previewUrl: String
    let artworkUrl30: String
    let artworkUrl60: String
    let artworkUrl100: String
    let releaseDate: String
    let primaryGenreName: String
}
