import SwiftUI

struct PodcastImageView: View {
    var podcast: Podcast
    
    @Binding var isTitleVisible: Bool
    
    var textColor: Color = MineColors.foreground
    
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                LazyVStack {
                    Rectangle()
                        .frame(width: 1, height: 180)
                        .onAppear {
                            withAnimation(.easeInOut(duration: 0.3)) {
                                isTitleVisible = true
                            }
                        }
                        .onDisappear {
                            withAnimation(.easeInOut(duration: 0.3)) {
                                isTitleVisible = false
                            }
                        }
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
        let bind = Binding<Bool>(get: { true }, set: { _ in })
        
        PodcastImageView(podcast: loadPodcast(3), isTitleVisible: bind)
    }
}
