import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse('https://parkjh7764.tistory.com');

class HomeScreen extends StatelessWidget {
  WebViewController? controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(homeUrl);

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('web_view_test'),
        actions: [
          IconButton(onPressed: (){
            controller?.loadRequest(homeUrl);
          }, icon: Icon(Icons.home_filled),),
        ],
      ),
      body: WebViewWidget(
        controller: controller!,
      ),
    );
  }
}

// note: 학습목표: controller 설정 시, const 사용할 수 없는게 맞는지? 왜 사용할 수 없는지? 키워드로 적고 말로 설명하기
// controller 가 const가 아니기 때문에 const를 없애준다.
