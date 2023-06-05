import SwiftUI
import my_first_framework

struct ContentView: View {
    @State private var isShowingFrameworkView = false
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Gettr Discovery View")
        }
        .padding()
        .fullScreenCover(isPresented: $isShowingFrameworkView) {
            MyFrameworkManager.createView(slug: "aalmada", channelId: "123456789012")        }
        Button("Watch Live Stream") {
            isShowingFrameworkView = true
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
