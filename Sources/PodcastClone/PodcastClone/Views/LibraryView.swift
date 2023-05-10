//
//  LibraryView.swift
//  PodcastClone
//
//  Created by etudiant on 10/05/2023.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Podcasts")
                    .font(.title)
            }
            .frame(width: .infinity)
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
