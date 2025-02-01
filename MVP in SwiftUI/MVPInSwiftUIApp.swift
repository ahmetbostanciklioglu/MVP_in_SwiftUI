import SwiftUI

@main
struct MVPInSwiftUIApp: App {
    
   // @StateObject private var userViewModel = UserViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
               // .environmentObject(userViewModel)
            //environmentObject içerisinde veri tüm uygulamaya yayılıyor.
        }
    }
}
