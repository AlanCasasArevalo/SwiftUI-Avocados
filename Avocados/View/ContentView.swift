import SwiftUI

struct ContentView: View {
    
    let headers: [HeaderModel]
    let recipes: [RecipeModel]
    let facts: [FactModel]
    
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

            RecipesView(headers: headers, facts: facts)
                .tabItem {
                    VStack{
                        Image("tabicon-book")
                        Text("Recipes")
                            .padding()
                    }
                }
            RipeningView(recipe: recipes[0])
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

class ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData, recipes: recipesData, facts: factsData)
    }

    #if DEBUG
    @objc class func injected() {
        UIApplication.shared.windows.first?.rootViewController =
            UIHostingController(rootView: ContentView(headers: headersData, recipes: recipesData, facts: factsData))
    }
    #endif
}
