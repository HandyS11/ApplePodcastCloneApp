import SwiftUI

@main
struct PodcastCloneApp: App {
    var body: some Scene {
        WindowGroup {
            MainPage(podcasts: loadAllPodcasts())
        }
    }
}
