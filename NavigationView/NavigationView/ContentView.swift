import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                CircleNumberView(color: .purple, number: 1)
                    .navigationTitle("Purple One")
                    .offset(y: -60)
                
                NavigationLink(destination: OrangeOne(color: .orange), label: { Text("Next Screen")})
                    .bold()
                    .frame(width: 280, height: 60)
                    .background(Color .blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .accentColor(Color(.label))
    }
    
    struct OrangeOne: View {
        var color: Color
        var body: some View {
            VStack {
                CircleNumberView(color: color, number: 2)
                    .navigationTitle("Orange One")
                    .offset(y: -60)
                
                NavigationLink(destination: GreenOne(), label: { Text("Next Screen")})
                    .bold()
                    .frame(width: 280, height: 60)
                    .background(Color .blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
    
    struct GreenOne: View {
        var body: some View {
            VStack {
                CircleNumberView(color: .green, number: 3)
                    .navigationTitle("Green One")
                    .offset(y: -60)
                    Text("THE END")
                    .frame(width: 280, height: 60)
                    .background(Color .gray)
                    .foregroundColor(.black)
                    .cornerRadius(30)
                    .opacity(0.5)
            }
        }
    }
    
    struct CircleNumberView: View {
        var color: Color
        var number: Int
        
        var body: some View {
            ZStack {
                Circle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(color)
                Text("\(number)")
                    .foregroundColor(.white)
                    .font(.system( size: 80, weight: .bold))
            }
        }
    }
}

#Preview {
    ContentView()
}
