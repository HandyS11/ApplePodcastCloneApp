import SwiftUI

struct MainPage: View {
    var podcasts: [Podcast] = []
    
    @State private var selected = 3
    
    var body: some View {
        TabView(selection: $selected) {
            EmptyView()
                .tabItem {
                    VStack {
                        Image(systemName: "play.circle.fill")
                        Text("Écouter")
                    }
                }
                .tag(1)
            
            EmptyView()
                .tabItem {
                    VStack {
                        Image(systemName: "square.grid.2x2.fill")
                        Text("Explorer")
                    }
                }
                .tag(2)
            
            PodcastListView(podcasts: podcasts)
                .tabItem {
                    VStack {
                        Image(systemName: "book.closed.fill")
                        Text("Bibliothèque")
                    }
                }
                .tag(3)
            
            EmptyView()
                .tabItem {
                    VStack {
                        Image(systemName: "magnifyingglass")
                        Text("Rechercher")
                    }
                }
                .tag(4)
        }
        .accentColor(MineColors.primary)
    }
}


struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage(podcasts: loadAllPodcasts())
    }
}
