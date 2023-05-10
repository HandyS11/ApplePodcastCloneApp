//
//  PlayingPodcastView.swift
//  PodcastClone
//
//  Created by etudiant on 10/05/2023.
//

import SwiftUI

struct PlayingPodcastView: View {
    var playingPodcastTitle: String = "Podcast playing..."
    var playingPodcastDate: String = "01 janvier 1999"
    
    var body: some View {
        HStack {
            Image(MineImages.placeholder)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
            VStack(alignment: .leading) {
                Text(playingPodcastTitle)
                Text(playingPodcastDate)
            }
            .padding(5)
            HStack {
                Image(systemName: "play")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                Image(systemName: "play")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
            }
        }
    }
}

struct PlayingPodcastView_Previews: PreviewProvider {
    static var previews: some View {
        PlayingPodcastView()
    }
}
