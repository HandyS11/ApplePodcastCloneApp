import SwiftUI

struct PodcastListView: View {
    var podcasts: [Podcast]
    
    var body: some View {
        VStack {
            NavigationStack {
                ZStack {
                    ScrollView {
                        LazyVGrid(columns: [GridItem(.flexible(), spacing: 15), GridItem(.flexible())], spacing: 20) {
                            ForEach(podcasts, id: \.self) { podcast in
                                NavigationLink(destination:
                                                PodcastView(podcast: podcast, topBackground: Color(UIImage(named: podcast.image)?.getDominantColor() ?? .clear)))
                                {
                                    PodcastCoverView(podcast: podcast)
                                }
                            }
                        }
                        .padding(.horizontal, 20)
                    }
                    .navigationTitle("Podcast")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button {} label: {
                                Image(systemName: "chevron.left")
                                    .foregroundColor(MineColors.primary)
                                Text("Bibliotèque")
                                    .foregroundColor(MineColors.primary)
                            }
                        }
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button {} label: {
                                Image(systemName: "ellipsis")
                                    .padding()
                                    .foregroundColor(MineColors.primary)
                                    .background(MineColors.button)
                                    .clipShape(Circle())
                                    .offset(x: 10)
                            }
                        }
                    }
                    .toolbarBackground(MineColors.background)
                }
            }
            PlayingView(podcast: loadPodcast(3))
                .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct PodcastListView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastListView(podcasts: loadAllPodcasts())
    }
}
