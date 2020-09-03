
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
                
                Button(action: {
                    self.percentage = 0
                    Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                        self.percentage += 0.1
                        if self.percentage == 100 {
                            timer.invalidate()
                        }
                    }
                }) {
                    Text("Iniciar")
                        .font(.system(.title, design: .rounded))
                        .foregroundColor(.white)
                }
                
            }
        }.onAppear{
//            self.percentage = 80.34
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
