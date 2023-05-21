import SwiftUI

struct PodcastHeaderView: View {
    var podcast: Podcast
    
    @Binding var isTitleVisible: Bool
    @Binding var isHeaderDocked: Bool
    
    var background: Color = MineColors.background
    
    private var buttonColor: Color {
        background.getForegroundColor(myOpacity: 0.9)
    }
    
    private var textColor: Color {
        background.getForegroundColor(myOpacity: 1)
    }
    
    private var textColorOpacity: Color { background.getForegroundColor(myOpacity: 0.6)
    }
    
    var body: some View {
        VStack {
            PodcastImageView(podcast: podcast, isTitleVisible: $isTitleVisible, textColor: textColor)
            .scaledToFit()
            
            Button {
            } label: {
                Label("Dernier épisode",
                      systemImage: "play.fill")
                .frame(maxWidth: .infinity)
                .foregroundColor(.black)
                .bold()
                .padding(.vertical, 16)
            }
            .background(buttonColor)
            .cornerRadius(10)
            .padding(.horizontal, 50)
            
            LazyVStack {
                Text("\(podcast.episodes![0].date.toEpisodeString): \(podcast.episodes![0].title):")
                    .padding(.top, 5)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(textColor)
                    .bold()
                
                    .onAppear {
                        withAnimation(.easeInOut(duration: 0.3)) {
                            isHeaderDocked = false
                        }
                    }
                    .onDisappear {
                        withAnimation(.easeInOut(duration: 0.3)) {
                            isHeaderDocked = true
                        }
                    }
            }
            
            Text(podcast.episodes![0].desc)
                .lineLimit(3)
                .foregroundColor(textColor)
                .frame(maxWidth: .infinity, alignment: .leading)

            PodcastRateView(podcast: podcast, textColor: textColor)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 3)
        }
        .padding()
        .background(background)
    }
}

struct PodcastHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        let bind = Binding<Bool>(get: { true }, set: { _ in })
        
        PodcastHeaderView(podcast: loadPodcast(2), isTitleVisible: bind, isHeaderDocked: bind, background: .purple)
    }
}
