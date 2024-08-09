import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:preload_page_view/preload_page_view.dart';

class VadooScreen extends StatefulWidget {
  const VadooScreen({Key? key}) : super(key: key);
  static const id = "/vadoo-screen";

  @override
  State<VadooScreen> createState() => _VadooScreenState();
}

class _VadooScreenState extends State<VadooScreen> {
  List<String> webViews = [
    '<div><div style="left: 0; width: 100%; height: 0; position: relative; padding-bottom: 177.78%;"><figure style="left: 0; width: 100%; height: 0; position: relative; padding-bottom: 177.78%; margin-block-end: 0; margin-block-start: 0; margin-inline-start: 0; margin-inline-end: 0;" ><iframe src="https://api.vadoo.tv/iframe_test?id=HRWXs6SZaAUHcVLpDccimv8RiWjWYL39" scrolling="no" style="border: 0; top: 0; left: 0; width: 100%; height: 100%; position: absolute; overflow:hidden; border-radius: 5px;" allowfullscreen="1" allow="autoplay"></iframe></figure></div></div>',
    '<div><div style="left: 0; width: 100%; height: 0; position: relative; padding-bottom: 177.78%;"><figure style="left: 0; width: 100%; height: 0; position: relative; padding-bottom: 177.78%; margin-block-end: 0; margin-block-start: 0; margin-inline-start: 0; margin-inline-end: 0;" ><iframe src="https://api.vadoo.tv/iframe_test?id=IYRn8HVhzCEIEwWpx8KN4lAV54PbP5eO" scrolling="no" style="border: 0; top: 0; left: 0; width: 100%; height: 100%; position: absolute; overflow:hidden; border-radius: 5px;" allowfullscreen="1" allow="autoplay"></iframe></figure></div></div>'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PreloadPageView.builder(
      preloadPagesCount: webViews.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return WebViewWidgets(html: webViews[index]);
      },
      itemCount: webViews.length,
    ));
  }
}

class WebViewWidgets extends StatefulWidget {
  const WebViewWidgets({Key? key, required this.html}) : super(key: key);
  final String html;

  @override
  State<WebViewWidgets> createState() => _WebViewWidgetsState();
}

class _WebViewWidgetsState extends State<WebViewWidgets> {
  late WebViewController webViewController;

  @override
  void initState() {
    super.initState();
    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadHtmlString(
        '${widget.html}',
      );
  }

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(
      controller: webViewController,
    );
  }
}
