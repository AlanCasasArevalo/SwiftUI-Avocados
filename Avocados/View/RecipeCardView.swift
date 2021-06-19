import SwiftUI

struct RecipeCardView: View {
    
    let recipe: RecipeModel
    var haptic = UIImpactFeedbackGenerator()
    @State var isPresented = false
    
    var body: some View {
        VStack (alignment: .leading, spacing: 0) {
            // MARK: - Image
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(.white)
                                .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                                .padding()
                            Spacer()
                        }
                    }
                )
            
            VStack (alignment: .leading, spacing: 8) {
                                
                // MARK: - Title
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                // MARK: - Headline
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                
                // MARK: - Rating
                RatingView(recipe: recipe)
                
                CookingView(recipe: recipe)
            }
            .padding()
        } // VStack
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
        .onTapGesture {
            haptic.impactOccurred()
            isPresented.toggle()
        }
        .sheet(isPresented: $isPresented, content: {
            RecipesDetailView(recipe: recipe)
        })
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[3])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
