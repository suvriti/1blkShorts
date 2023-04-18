/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

//@main
struct CameraApp: App {
    
    @State var selectedTab = 1

    init() {
        UINavigationBar.applyCustomAppearance()
    }
    
    var body: some Scene {
        WindowGroup {
            CameraView(selectedTab: $selectedTab)
        }
    }
}

fileprivate extension UINavigationBar {
    
    static func applyCustomAppearance() {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
}
