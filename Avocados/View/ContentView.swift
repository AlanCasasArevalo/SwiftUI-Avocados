import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem {
                    VStack{
                        Image("tabicon-branch")
                        Text("Avocados")
                            .padding()
                    }
                }

            RecipesView()
                .tabItem {
                    VStack{
                        Image("tabicon-book")
                        Text("Recipes")
                            .padding()
                    }
                }
            RipeningView()
                .tabItem {
                    VStack{
                        Image("tabicon-avocado")
                        Text("Ripening")
                            .padding()
                    }
                }
            SettingsView()
                .tabItem {
                    VStack{
                        Image("tabicon-settings")
                        Text("Avocados")
                            .padding()
                    }
                }
        } // TabView
        .edgesIgnoringSafeArea(.all)
        .accentColor(.primary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
