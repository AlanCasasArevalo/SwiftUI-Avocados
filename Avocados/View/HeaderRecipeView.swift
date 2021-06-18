import SwiftUI

struct HeaderRecipeView: View {
    
    @State private var showHeadline = false
    
    private var slideAnimation: Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    
    var body: some View {
        ZStack {
            Image("avocado-crostini")
                .resizable()
                .aspectRatio(contentMode: .fill)
            HStack (alignment: .top, spacing: 0) {
                
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 4)
                
                VStack (alignment: .leading, spacing: 0) {
                    Text("Avocado")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)

                    Text("Avocado is a fruit with real great nutritionals components")
                        .font(.system(.footnote))
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                } // VStack
                .shadow(radius: 3)
                .foregroundColor(.white)
                .frame(width: 281, height: 105, alignment: .center)
                .padding(.vertical, 0)
                .padding(.horizontal, 20)
                .background(Color("ColorBlackTransparentLight"))
            } // HStack
            .frame(width: 285, height: 105, alignment: .center)
            .offset(x: -64, y: showHeadline ? 75 : 220)
            .animation(slideAnimation)
            .onAppear {
                showHeadline.toggle()
            }
            
        } // ZStack
        .frame(width: 480, height: 320, alignment: .center)
    }
}

struct HeaderRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderRecipeView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
