import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                IntroductionView()
            }.navigationViewStyle(.stack)
                .statusBarHidden(true)
        }
    }
    
    init() {
        let fontURL = Bundle.main.url(forResource: "PatrickHandSC-Regular", withExtension: "ttf")!
        CTFontManagerRegisterFontsForURL(fontURL as CFURL, CTFontManagerScope.process, nil)
      }
}
