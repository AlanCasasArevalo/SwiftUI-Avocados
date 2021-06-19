import SwiftUI

struct RecipesDetailView: View {
    
    @State private var pulsate = false
    let recipe: RecipeModel
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack (alignment: .center, spacing: 0) {
                
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                Group {
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .bold()
                        .foregroundColor(Color("ColorGreenAdaptative"))
                        .multilineTextAlignment(.center)
                        .padding(.top, 10)
                    
                    // MARK: - Rating
                    RatingView(recipe: recipe)
                    
                    // MARK: - Cooking
                    CookingView(recipe: recipe)
                    
                    // MARK: - Ingredients
                    Text("Ingredients")
                        .bold()
                        .modifier(TitleModifier())
                    
                    VStack (alignment: .leading, spacing: 0) {
                        ForEach(recipe.ingredients, id: \.self) { ingredient in
                            Text(ingredient)
                                .font(.footnote)
                                .foregroundColor(.gray)
                                .multilineTextAlignment(.leading)
                            Divider()
                        }
                    }
                    
                    // MARK: - Ingredients
                    Text("Instructions")
                        .bold()
                        .modifier(TitleModifier())
                    
                    VStack (alignment: .leading, spacing: 0) {
                        ForEach(recipe.instructions, id: \.self) { instruction in
                            VStack (alignment: .center, spacing: 5) {
                                Image(systemName: "chevron.down.circle")
                                    .resizable()
                                    .frame(width: 42, height: 42, alignment: .center)
                                    .imageScale(.large)
                                    .font(Font.title.weight(.ultraLight))
                                    .foregroundColor(Color("ColorGreenAdaptative"))
                                
                                Text(instruction)
                                    .lineLimit(nil)
                                    .multilineTextAlignment(.leading)
                                    .font(.system(.body, design: .serif))
                                    .frame(maxHeight: 100)
                            }
                        }
                    }

                } // Group
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            } // VStack
        } // ScrollView
        .edgesIgnoringSafeArea(.top)
        .overlay(
            HStack{
                Spacer()
                VStack{
                    Button(action: {
                        // Do something
                        presentation.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .opacity(pulsate ? 1.2 : 0.6)
                            .scaleEffect(pulsate ? 1.2 : 0.8, anchor: .center)
                            .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
                    })
                    .padding()
                    Spacer()
                }
            }
        ) // overlay
        .onAppear {
            pulsate.toggle()
        }
    }
}

struct RecipesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesDetailView(recipe: recipesData[0])
    }
}
