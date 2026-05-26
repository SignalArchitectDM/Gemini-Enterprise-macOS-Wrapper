import SwiftUI
import WebKit

struct ContentView: View {
    @StateObject private var webViewModel = WebViewModel()
    
    var body: some View {
        WebViewContainer(webViewModel: webViewModel)
            .ignoresSafeArea()
            .onAppear {
                webViewModel.loadEnterpriseURL()
            }
    }
}