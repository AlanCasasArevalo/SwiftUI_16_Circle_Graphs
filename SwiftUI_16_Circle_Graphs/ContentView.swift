
import SwiftUI

struct ContentView: View {
    
    @State private var percentage: CGFloat = 0
    
    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(.all)
            VStack{
                Text("Barra circular")
                    .font(.system(.largeTitle, design: .rounded))
                
                CircleBar(percentage: self.percentage)
            }
        }.onAppear{
            self.percentage = 80.34
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
