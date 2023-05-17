//
//  PodcastPlayingView.swift
//  PodcastClone
//
//  Created by etudiant on 17/05/2023.
//

import SwiftUI

struct PodcastPlayingView: View {
    var podcast: Podcast = Podcast(title: "Nadie Sabe Nada | Marlon something", author: "Somebody", date: "29 avril 2023", note: 5, nbVote: 42, theme: "theme", frequency: "Tous les jours", episodes: nil)
    
    var body: some View {
        HStack {
            Image(MineImages.placeholder)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(5)
                .frame(width: 80, height: 80)
            VStack(alignment: .leading) {
                Text(podcast.title)
                    .font(.title3)
                    .lineLimit(1)
                    .truncationMode(.tail)
                    .foregroundColor(MineColors.foreground)
                Text(podcast.date)
                    .foregroundColor(Color.gray)
            }
            .padding(10)
            .frame(width: .infinity)
            HStack {
                Image(systemName: "play.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .foregroundColor(MineColors.foreground)
                    .padding(10)
                Image(systemName: "goforward.30")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .foregroundColor(MineColors.foreground)
            }
        }.padding(10)
    }
}

struct PodcastPlayingView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastPlayingView()
    }
}
