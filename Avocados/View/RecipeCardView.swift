import SwiftUI

struct RecipeCardView: View {
    
    let recipe: RecipeModel
    
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
                HStack {
                    ForEach(1...(recipe.rating), id:\.self) { _ in
                        Image(systemName: "star.fill")
                            .font(.system(.body, design: .serif))
                    }
                }
                .foregroundColor(.yellow)
                
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
            .padding()
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
        
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[3])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
