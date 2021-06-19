import SwiftUI

struct RecipesView: View {
    
    let headers: [HeaderModel]

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack (alignment: .center, spacing: 20) {
                // MARK: - Header
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack (alignment: .top, spacing: 0) {
                        ForEach(headers, id: \.id) { header in
                            HeaderRecipeView(header: header)
                        }
                    }
                }
                
                // MARK: - Body
                Text("Avocados")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())

                DishesView()
                    .frame(maxWidth: 640)

                // MARK: - Footer
                VStack {
                    Text("All about avocados")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())

                    Text("All about avocados, All about avocados, All about avocados, All about avocados, All about avocados, ")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                    
                } // VStack
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }
        } // ScrollView
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .padding(8)
            .foregroundColor(Color("ColorGreenAdaptative"))
    }
}

struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView(headers: headersData)
    }
}
