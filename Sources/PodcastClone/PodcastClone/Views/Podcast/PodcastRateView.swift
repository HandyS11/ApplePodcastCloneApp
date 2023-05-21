import SwiftUI

struct PodcastRateView: View {
    var podcast: Podcast
    
    var textColor: Color = MineColors.foreground
    
    private var fRate: String {
        String(format: "%.1f", podcast.rating).replacingOccurrences(of: ".", with: ",")
    }
    
    var body: some View {
        HStack {
            Image(systemName:"star.fill")
            Text(fRate)
                .bold()
            Text("(\(podcast.number.stringSuffix))")
            Text("•  \(podcast.type.joined(separator: " • "))")
        }
        .font(.footnote)
        .padding(.bottom, 8)
        .foregroundColor(textColor)
    }
}

struct PodcastRateView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastRateView(podcast: loadPodcast(2))
    }
}
