//
//  PodcastCoverView.swift
//  PodcastClone
//
//  Created by etudiant on 17/05/2023.
//

import SwiftUI

struct PodcastCoverView: View {
    var podcast: Podcast = Podcast(title: "Nadie Sabe Nada | Marlon something", author: "Somebody", date: "29 avril 2023", note: 5, nbVote: 42, theme: "theme", frequency: "Tous les jours", episodes: nil)
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(MineImages.placeholder)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
            Text("Chaleur Humaine")
                .font(.title2)
            Text("Mise à jour : mardi")
                .font(.title3)
                .foregroundColor(Color.gray)
        }
    }
}

struct PodcastCoverView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastCoverView()
    }
}
