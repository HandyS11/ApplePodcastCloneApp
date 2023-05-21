import SwiftUI

struct PodcastEpisodeListView: View {
    var episodes: [Episode] = []
    
    var body: some View {
        LazyVStack(pinnedViews: .sectionHeaders) {
            Section(header:
                HStack {
                        Text("Épisodes")
                            .foregroundColor(MineColors.foreground)
                            .font(.title)
                            .bold()
                            
                        Button {} label: {
                            Image(systemName: "chevron.down")
                                .foregroundColor(MineColors.primary)
                        }
                        Spacer()
                        Button {} label: {
                            Text("Tout voir")
                                .foregroundColor(MineColors.primary)
                                .font(.title3)
                        }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .padding(.bottom, -10)
                .padding(.top, 0)
                .background(MineColors.background)
            ) {
                ForEach(episodes, id: \.self) { episode in
                    PodcastEpisodeView(episode: episode)
                }
            }
        }
        .background(MineColors.background)
    }
}

struct PodcastEpisodeListView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastEpisodeListView(episodes: loadPodcast(1).episodes!)
    }
}
