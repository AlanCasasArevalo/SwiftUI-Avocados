import SwiftUI

struct RipeningStageView: View {
    
    var body: some View {
        VStack {
            RipeningView(ripening: ripeningsData[0])
        }
    }
}

struct RipeningStageView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStageView()
    }
}
