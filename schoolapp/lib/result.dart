import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class ResultView extends StatefulWidget {
  ResultView(this.url);
  final String url;

  @override
  _ResultViewState createState() => _ResultViewState();
}

class _ResultViewState extends State<ResultView> {
  String path = 'http://result.bpsplayschool.com/frame.php?path=';
  double _progress = 0.0;

  @override
  void initState() {
    super.initState();
    path += widget.url;
    print(path);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Container(
        child: Column(
          children: [
            (progress != 1.0) ? LinearProgressIndicator(value: _progress) : null,
            Expanded(child: ),
          ],
        ),
      ),
    );
  }
}
