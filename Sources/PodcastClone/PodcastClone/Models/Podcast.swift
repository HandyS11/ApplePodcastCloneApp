//
//  Podcast.swift
//  PodcastClone
//
//  Created by etudiant on 10/05/2023.
//

import Foundation

public struct Podcast {
    let title: String
    let author: String
    let note: Float
    let nbVote: Int
    let theme: String
    let frequency: String
    let episodes: [Episode]
}
