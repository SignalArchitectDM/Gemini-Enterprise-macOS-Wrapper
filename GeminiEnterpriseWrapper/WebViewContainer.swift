import SwiftUI
import WebKit

struct WebViewContainer: NSViewRepresentable {
    @ObservedObject var webViewModel: WebViewModel
    
    func makeNSView(context: Context) -> WKWebView {
        webViewModel.webView
    }
    
    func updateNSView(_ nsView: WKWebView, context: Context) {}
}