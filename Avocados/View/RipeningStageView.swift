import SwiftUI

struct RipeningStageView: View {
    
    let ripenings: [RipeningModel]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack (alignment: .center, spacing: 25) {
                    ForEach(ripenings) { ripening in
                        RipeningView(ripening: ripening)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct RipeningStageView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStageView(ripenings: ripeningsData)
    }
}
