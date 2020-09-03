
import SwiftUI

struct CircleBar: View {
    var percentage: CGFloat = 0
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.blue)
                .frame(width: 200, height: 200)
                .overlay(
                    Circle()
                        .trim(from: 0, to: self.percentage * 0.01)
                        .stroke(style: StrokeStyle(lineWidth: 15, lineCap: .round, lineJoin: .round))
                        .fill(Color.white)
                )
                .animation(.spring(response: 1.0, dampingFraction: 1.0, blendDuration: 1.0))
            
            Text(String(format: "%.2f", self.percentage))
                .font(.system(.title, design: .rounded))
                .foregroundColor(.white)
        }
    }
}

struct CircleBar_Previews: PreviewProvider {
    static var previews: some View {
        CircleBar()
    }
}
