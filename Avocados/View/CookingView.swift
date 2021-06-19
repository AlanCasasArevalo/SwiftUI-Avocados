import SwiftUI

struct CookingView: View {

    let recipe: RecipeModel

    var body: some View {
        // MARK: - Cooking
        HStack (alignment: .center, spacing: 12) {
            
            HStack {
                Image(systemName: "person.2")
                Text("Servers: \(recipe.serves)")
            }
            
            HStack {
                Image(systemName: "timer")
                Text("Prep: \(recipe.preparation)")
            }
            
            HStack {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            }
            
        }
        .font(.footnote)
        .foregroundColor(.gray)
    }
}

struct CookingView_Previews: PreviewProvider {
    static var previews: some View {
        CookingView(recipe: recipesData[0])
    }
}
