import SwiftUI

struct PodcastHeaderView: View {
    var podcast: Podcast
    
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
            PodcastImageView(podcast: podcast, textColor: textColor)
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
        PodcastHeaderView(podcast: loadPodcast(2))
    }
}
