import Foundation
import SwiftUI

struct NavBarModifier: ViewModifier {
    var backgroundColor: UIColor?
    
    init(backgroundColor: UIColor?) {
        self.backgroundColor = backgroundColor
        
        let coloredApparence = UINavigationBarAppearance()
        coloredApparence.configureWithTransparentBackground()
        
        coloredApparence.backgroundColor = .clear
        UINavigationBar.appearance().standardAppearance = coloredApparence
        UINavigationBar.appearance().scrollEdgeAppearance = coloredApparence
    }
    
    func body(content: Content) -> some View {
        ZStack {
            content
            VStack {
                GeometryReader { geometry in
                    Color(self.backgroundColor ?? .clear)
                        .frame(height: geometry.safeAreaInsets.top)
                        .edgesIgnoringSafeArea(.top)
                    Spacer()
                }
            }
        }
    }
}
