import SwiftUI

struct PodcastImageView: View {
    var podcast: Podcast
    
    var textColor: Color = MineColors.foreground
    
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                LazyVStack {
                }
                Image(podcast.image)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(8)
                        .shadow(radius: 10)
                        .padding(.horizontal, 80)
            }
            Text(podcast.name)
                .foregroundColor(textColor)
                    .font(.title2)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .center)
            
            HStack {
                if let authorImage =  podcast.authorImage {
                    Image(authorImage)
                        .resizable()
                        .frame(width: 25, height: 25)
                        .clipShape(Circle())
                }
                
                Text(podcast.author)
                    .foregroundColor(textColor)
                    .font(.title3)
            
                if (podcast.authorImage != nil) {
                    Button {} label: {
                        Image(systemName: "chevron.right")
                            .tint(textColor)
                    }
                }
            }
        }
    }
}

struct PodcastImageView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastImageView(podcast: loadPodcast(3))
    }
}
