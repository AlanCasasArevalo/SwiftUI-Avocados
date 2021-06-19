import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack (alignment: .center, spacing: 4) {
            VStack (alignment: .leading, spacing: 4) {
                HStack {
                    Image("icon-toasts")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Toasts")
                }
                Divider()
                HStack {
                    Image("icon-tacos")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("holaaa")
                }
                Divider()
                HStack {
                    Image("icon-salads")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Salads")
                }
                Divider()
                HStack {
                    Image("icon-halfavo")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Spread")
                }
            } // HStack

            
            VStack (alignment: .center, spacing: 0) {
                
                HStack{
                    Divider()
                }

                Image(systemName: "heart.circle")
                    .font(Font.title.weight(.ultraLight))
                    .imageScale(.large)

                HStack{
                    Divider()
                }
            }
        
            VStack (alignment: .leading, spacing: 4) {
                HStack {
                    Text("Guacamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(IconModifier())
                } // HStack
                Divider()
                HStack {
                    Text("Sandwiches")
                    Spacer()
                    Image("icon-sandwiches")
                        .resizable()
                        .modifier(IconModifier())
                } // HStack
                Divider()
                HStack {
                    Text("Soup")
                    Spacer()
                    Image("icon-soup")
                        .resizable()
                        .modifier(IconModifier())
                } // HStack
                Divider()
                HStack {
                    Text("Smoothies")
                    Spacer()
                    Image("icon-smoothies")
                        .resizable()
                        .modifier(IconModifier())
                } // HStack
            } // VStack
        } // HStack
        .font(.system(.callout, design: .serif))
        .foregroundColor(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}

struct RecipeBodyView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
