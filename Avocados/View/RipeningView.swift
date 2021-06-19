import SwiftUI

struct RipeningView: View {
    
    let recipe: RecipeModel

    var body: some View {
        VStack {
            Text("Avocado Facts")
                .fontWeight(.bold)
                .modifier(TitleModifier())
            
            Text("Avocado Recipes")
                .fontWeight(.bold)
                .modifier(TitleModifier())
            
            RecipeCardView(recipe: recipe)
                .padding()
            
            Spacer()
        }
        
        
    }
}

struct RipeningView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningView(recipe: recipesData[0])
    }
}
