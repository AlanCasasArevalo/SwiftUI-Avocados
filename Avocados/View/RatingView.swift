import SwiftUI

struct RatingView: View {
    
    let recipe: RecipeModel

    var body: some View {
        HStack {
            ForEach(1...(recipe.rating), id:\.self) { _ in
                Image(systemName: "star.fill")
                    .font(.system(.body, design: .serif))
            }
        }
        .foregroundColor(.yellow)
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(recipe: recipesData[0])
    }
}
