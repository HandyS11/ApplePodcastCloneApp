import Foundation
import SwiftUI

extension View {
    func navigationBarColor(_ backgroundColor: UIColor?) -> some View {
        self.modifier(NavBarModifier(backgroundColor: backgroundColor))
    }
}
