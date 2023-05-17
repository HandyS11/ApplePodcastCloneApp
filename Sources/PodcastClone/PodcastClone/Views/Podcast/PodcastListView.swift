//
//  PodcastListView.swift
//  PodcastClone
//
//  Created by etudiant on 17/05/2023.
//

import SwiftUI

struct PodcastListView: View {
    let podcasts: [Podcast] = [
        Podcast(title: "Podcast 1", author: "Author 1", date: "2023-01-01", note: 4.5, nbVote: 100, theme: "Theme 1", frequency: "Weekly", episodes: nil),
        Podcast(title: "Podcast 2", author: "Author 2", date: "2023-02-01", note: 3.8, nbVote: 50, theme: "Theme 2", frequency: "Biweekly", episodes: nil),
        Podcast(title: "Podcast 3", author: "Author 3", date: "2023-03-01", note: 4.2, nbVote: 80, theme: "Theme 3", frequency: "Monthly", episodes: nil),
        Podcast(title: "Podcast 4", author: "Author 4", date: "2023-04-01", note: 4.7, nbVote: 120, theme: "Theme 4", frequency: "Weekly", episodes: nil),
        Podcast(title: "Podcast 5", author: "Author 5", date: "2023-05-01", note: 4.0, nbVote: 70, theme: "Theme 5", frequency: "Biweekly", episodes: nil),
        Podcast(title: "Podcast 6", author: "Author 6", date: "2023-06-01", note: 4.3, nbVote: 90, theme: "Theme 6", frequency: "Monthly", episodes: nil),
        Podcast(title: "Podcast 7", author: "Author 7", date: "2023-07-01", note: 4.8, nbVote: 150, theme: "Theme 7", frequency: "Weekly", episodes: nil)
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                ScrollView {
                    LazyVGrid(columns: [
                        GridItem(.flexible(), spacing: 15),
                        GridItem(.flexible())
                    ], spacing: 30) {
                        ForEach(podcasts, id: \.self) { podcast in
                            PodcastCoverView(podcast: podcast)
                        }
                    }.padding(.horizontal, 20)
                }.padding(.bottom, 100)
                VStack {
                    Spacer()
                    PodcastPlayingView()
                        .frame(maxWidth: .infinity)
                }
            }
        }
        //Text("Podcasts")
        //    .font(.system(size: 42))
        //    .fontWeight(.bold)
    }
}

struct PodcastListView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastListView()
    }
}
