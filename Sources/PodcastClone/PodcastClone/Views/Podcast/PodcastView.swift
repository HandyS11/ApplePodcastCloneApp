import SwiftUI

struct PodcastView: View {
    var podcast: Podcast
    
    var topBackground: Color = .clear
    
    @State private var isTitleVisible = true
    @State private var isHeaderDocked = false
    
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View {
        ZStack {
            VStack {
                topBackground.ignoresSafeArea()
                    .frame(height: UIScreen.main.bounds.size.height/2)
                MineColors.background
            }
            ScrollView {
                PodcastHeaderView(podcast: podcast, background: topBackground)
                PodcastEpisodeListView(episodes: podcast.episodes!)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbarBackground(.hidden)
        .navigationBarColor(UIColor(MineColors.background)
        .withAlphaComponent(isHeaderDocked ? 1 : 0.9))
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .tint(isTitleVisible ? .white : MineColors.primary)
                        .padding(isTitleVisible ? 10 : 0)
                        .background(isTitleVisible ? MineColors.button : .clear)
                        .clipShape(Circle())
                    Text(isTitleVisible ? "" : "Podcasts")
                }
            }
            
            ToolbarItem(placement: .principal) {
                Text(isTitleVisible ? "" : podcast.name)
                    .lineLimit(1)
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {} label: {
                    ZStack {
                        Image(systemName: "arrow.down")
                            .tint(isTitleVisible ? .white : MineColors.primary)
                            .padding(8)
                            .background(isTitleVisible ? MineColors.button : MineColors.foreground)
                            .clipShape(Circle())
                    }
                }
                .padding(.trailing, -20)
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {} label: {
                    Image(systemName: "ellipsis")
                        .tint(isTitleVisible ? .white : .accentColor)
                        .padding(15)
                        .background(isTitleVisible ? MineColors.button : MineColors.background)
                        .clipShape(Circle())
                }
            }
        }
    }
}

struct PodcastView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastView(podcast: loadPodcast(2))
    }
}
