//
//  Podcast.swift
//  PodcastClone
//
//  Created by etudiant on 10/05/2023.
//

import Foundation

public struct Podcast : Hashable {
    
    let title: String
    let author: String
    let date: String
    let note: Float
    let nbVote: Int
    let theme: String
    let frequency: String
    var episodes: [Episode]?
    
    public func hash(into hasher: inout Hasher) {
            hasher.combine(title)
            hasher.combine(author)
            hasher.combine(date)
        }
        
        public static func ==(lhs: Podcast, rhs: Podcast) -> Bool {
            return lhs.title == rhs.title &&
                lhs.author == rhs.author &&
                lhs.date == rhs.date
        }
}
