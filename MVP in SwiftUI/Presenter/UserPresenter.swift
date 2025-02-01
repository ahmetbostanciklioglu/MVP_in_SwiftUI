import Foundation

//MARK: - Presenter Layer - iş mantığı ve Veri İşleme
// MARK: - MVP'nin Sorunu SwiftUI'de Presenter, ViewModel yerine geçtiği için MVVM daha yaygın kullanılır.

// MARK:  ObservableObject protokolü veri modelini takip etmek için kullanılır
class UserPresenter: ObservableObject {
    
    // MARK: Otomatik Güncellenen Değişken --> buradaki Published değişken değiştiğinde SwiftUI View otomatik olaraktan güncelleneciktir
    @Published var user: User?
    
    func loadUser() {
        self.user = User(name: "Ahmet", age: 29)
    }
}
