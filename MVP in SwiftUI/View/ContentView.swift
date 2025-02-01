import SwiftUI


// MARK: ParentView
struct ContentView: View {
    
    @StateObject var userPresenter = UserPresenter()
   // @EnvironmentObject var userViewModel: UserViewModel
    
    var body: some View {
        UserDetailView(userPresenter: userPresenter)
    }
}


// MARK: ChildView
struct UserDetailView: View {
    //MARK: Eğer bir View, başka bir View tarafından oluşturulan bir ViewModel'i kullanıyorsa
    @ObservedObject var userPresenter: UserPresenter
  //  @EnvironmentObject var userViewModel: UserViewModel
    
    var body: some View {
        VStack {
            if let user = userPresenter.user {
                Text("Adı: \(user.name)")
                Text("Yaşı: \(user.age)")
            } else {
                ProgressView()
                    .scaleEffect(1.2)
            }
        }
        .onAppear {
            DispatchQueue.main.async {
                userPresenter.loadUser()
            }
        }
    }
}

#Preview {
    ContentView()
      //  .environmentObject(UserViewModel())
}
