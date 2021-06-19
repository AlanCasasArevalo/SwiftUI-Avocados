import SwiftUI

struct FactCardView: View {
    
    let fact: FactModel
    
    var body: some View {
        ZStack {
            Text(fact.content)
                .padding(.leading, 55)
                .padding(.trailing, 10)
                .padding(.vertical, 3)
                .frame(width: 300, height: 135, alignment: .center)
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .leading, endPoint: .trailing)
                )
                .cornerRadius(12)
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .font(.footnote)
                .foregroundColor(.white)
            
            Image(fact.image)
                .resizable()
                .scaledToFit()
                .frame(width: 66, height: 66, alignment: .center)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(Color.white)
                        .frame(width: 74, height: 74, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color("ColorGreenLight"), Color("ColorGreenMedium")]), startPoint: .leading, endPoint: .trailing)
                        )
                        .frame(width: 82, height: 82, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(
                            Color("ColorAppearenceAdaptative")
                        )
                        .frame(width: 90, height: 90, alignment: .center)
                )
                .offset(x: -150, y: 0)
        }
    }
}

struct FactCardView_Previews: PreviewProvider {
    static var previews: some View {
        FactCardView(fact: factsData[0])
    }
}
