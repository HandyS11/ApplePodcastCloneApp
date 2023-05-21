import SwiftUI

struct PlayingView: View {
    var podcast: Podcast
    
    private static let formatter : DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        return formatter
    } ()
    
    private let formatter2: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM yyyy"
        return formatter
    }()
    
    var body: some View {
        HStack {
            Image(podcast.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(5)
                .frame(width: 70, height: 70)
            VStack(alignment: .leading) {
                Text(podcast.episodes![0].title)
                    .font(.title3)
                    .lineLimit(1)
                    .truncationMode(.tail)
                    .foregroundColor(MineColors.foreground)
                Text(formatter2.string(from: podcast.date))
                    .foregroundColor(Color.gray)
            }
            .padding(10)
            .frame(width: .infinity)
            
            Button {} label: {
                Image(systemName: "play.fill")
                    .resizable()
                    .scaledToFit()
                    .tint(MineColors.foreground)
                    
            }
            .frame(height: 30)
            .padding(.trailing)
            Button {} label: {
                Image(systemName: "goforward.30")
                    .resizable()
                    .scaledToFit()
                    .tint(MineColors.foreground)
            }
            .frame(height: 30)
        }
        .padding(.horizontal)
        .padding(.bottom, 10)
    }
}

struct PlayingView_Previews: PreviewProvider {
    static var previews: some View {
        PlayingView(podcast: loadPodcast(3))
    }
}
