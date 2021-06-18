import SwiftUI

struct AvocadosView: View {
    
    // MARK: - Properties
    @State private var pulsateAnimation = false
    
    var body: some View {
        VStack {
            Spacer()
            Image("avocado")
                .resizable()
                .scaledToFit()
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                .scaleEffect(pulsateAnimation ? 1 : 0.9)
                .opacity(pulsateAnimation ? 1 : 0.9)
                .animation(.easeIn(duration: 1.5).repeatForever(autoreverses: true))
            
            VStack {
                Text("Avocados".uppercased())
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .padding()
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                    .foregroundColor(.white)

                Text("""
Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
""")
                    .lineLimit(nil)
                    .font(.system(.headline, design: .serif))
                    .foregroundColor( Color("ColorGreenLight"))
                    .lineSpacing(8)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 640, minHeight: 120,  alignment: .center)
            } // VStack
            .padding()
            
            Spacer()
        } // VStack
        .background(
            Image("background")
                .resizable()
                .scaledToFill()
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            pulsateAnimation.toggle()
        }
    }
}

struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AvocadosView()
                .previewDevice("iPhone Xʀ")
                .preferredColorScheme(.light)
//            AvocadosView()
//                .previewDevice("iPhone 6s")
//                .preferredColorScheme(.light)
        }
    }
}
