import SwiftUI

struct PodcastEpisodeView: View {
    var episode: Episode
    
    var body: some View {
        VStack {
            Divider()
                .background(Color.gray)
                .scaleEffect(CGSize(width: 1, height: 4))
                .padding(.trailing, -16)
                .padding(.bottom)
            
            HStack {
                Text(episode.date.toEpisodeString.uppercased())
                    .foregroundColor(Color.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            VStack {
                Text(episode.title)
                    .foregroundColor(MineColors.foreground)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .lineLimit(2)
                
                Text(episode.desc)
                    .foregroundColor(Color.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .lineLimit(3)
            }
            
            HStack {
                Button {
                } label: {
                    Image(systemName: "play.fill")
                        .padding(10)
                }
                .foregroundColor(MineColors.primary)
                .background(MineColors.gray)
                .cornerRadius(20)
                
                Text(episode.time.formatToString)
                    .foregroundColor(MineColors.primary)
                
                Button {} label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(Color.gray)
                        .opacity(0.5)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
            }.frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.trailing)
        .padding(.leading)
    }
}


struct PodcastEpisodeView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastEpisodeView(episode: (loadPodcast(2).episodes?[2])!)
    }
}
