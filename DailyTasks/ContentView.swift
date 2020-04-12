import SwiftUI
import WebKit

struct ContentView: View {
  var body: some View {
    WebView().edgesIgnoringSafeArea(.all)
  }
}

struct WebView: UIViewRepresentable {
  func makeUIView(context: Context) -> WKWebView {
    let webView = WKWebView()
    webView.scrollView.isScrollEnabled = true
    return webView
  }

  func updateUIView(_ webView: WKWebView, context: Context) {
    let liveView = "https://sheltered-tundra-09814.herokuapp.com"
    if let url = URL(string: liveView) {
       let request = URLRequest(url: url)
       webView.load(request)
    }
  }
}

struct ContentView_Previews : PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

