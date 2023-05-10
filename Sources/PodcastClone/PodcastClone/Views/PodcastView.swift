//
//  PodcastView.swift
//  PodcastClone
//
//  Created by etudiant on 10/05/2023.
//

import SwiftUI

struct PodcastView: View {
    var title: String = "Title"
    var author: String = "Author"
    var desc1: String = "I'm the description of the podcast"
    var desc2: String = "I'm the second description of the podcast"
    var note: String = "4,5"
    var nbVote: String = "(1,5k)"
    var theme: String = "Theme"
    var frequency: String = "Frequency"
    
    var body: some View {
        VStack {
            VStack(alignment: .center) {
                Image(MineImages.placeholder)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                Text(title)
                    .font(.title)
                    .fontWeight(Font.Weight.bold)
                    .foregroundColor(MineColors.foreground)
                HStack {
                    Image(MineImages.placeholder)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                    Text(author)
                        .font(.title2)
                        .foregroundColor(MineColors.foreground)
                    Image(systemName: "play")
                }
                Button { } label: {
                    Label("Dernier épisode", systemImage: "play")
                        .foregroundColor(MineColors.foreground)
                        .frame(width: 300, height: 50)
                }
                .background(MineColors.background)
                .cornerRadius(10)
                .padding(10)
            }
            VStack(alignment: .leading) {
                Text(desc1)
                    .fontWeight(Font.Weight.bold)
                    .foregroundColor(MineColors.foreground)
                Text(desc2)
                    .foregroundColor(MineColors.foreground)
                HStack {
                    Image(systemName: "star")
                        .foregroundColor(MineColors.foreground)
                    Text("\(note) \(nbVote) • \(theme) • \(frequency)")
                }
            }
            .frame(width: .infinity)
        }
        .frame(maxWidth: .infinity)
        .padding(10)
        .background(MineColors.background)
    }
}

struct PodcastView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastView()
    }
}
