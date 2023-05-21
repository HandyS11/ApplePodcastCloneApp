import SwiftUI

struct PodcastCoverView: View {
    var podcast: Podcast
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(podcast.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
            Text(podcast.name)
                .font(.title2)
                .foregroundColor(MineColors.foreground)
                .lineLimit(1)
            Text("Mise à jour : hier")
                .font(.title3)
                .lineLimit(1)
                .foregroundColor(Color.gray)
        }
    }
}

struct PodcastCoverView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastCoverView(podcast: loadPodcast(2))
    }
}
