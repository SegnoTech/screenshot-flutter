// import 'package:flutter/material.dart';
// import 'package:screen_capturer/screen_capturer.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {

//   Future<void> getcaptureScreen() async {
//     CapturedData? capturedData = await screenCapturer.capture(
//       mode: CaptureMode.region, // screen, window
//       imagePath: '<path>',
//     );
//   }

// @override
// void initState() {
//   super.initState();
//   getcaptureScreen();
// }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Home PAge"),
//       ),
//       body: Container(
//         child: Column(
//           children: [
//             Text(" bajkd adfjka adfjka akjda adfjkana fjaknf anfkaj"),
//             Text("data"),
//             Row(
//               children: [
//                 Image.network(
//                     "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/800px-Image_created_with_a_mobile_phone.png")
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'dart:io';
// import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:preference_list/preference_list.dart';
import 'package:screen_capturer/screen_capturer.dart';
import 'package:path_provider/path_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isAccessAllowed = false;

  CapturedData? _lastCapturedData;

  @override
  void initState() {
    super.initState();
    _init();
  }

  void _init() async {
    _isAccessAllowed = await ScreenCapturer.instance.isAccessAllowed();

    setState(() {});
  }

  void _handleClickCapture(CaptureMode mode) async {
    Directory directory = await getApplicationDocumentsDirectory();
    String imageName =
        'Screenshot-${DateTime.now().millisecondsSinceEpoch}.png';
    String imagePath =
        '${directory.path}/screen_capturer_example/Screenshots/$imageName';
    _lastCapturedData = await ScreenCapturer.instance.capture(
      mode: mode,
      imagePath: imagePath,
      silent: true,
    );
    print("TTTTTTTTTTTTTTTTTTTT");
    if (_lastCapturedData != null) {
      print("WWWWWWWWWWWWWWWWWWW");
      print(imagePath);
      // ignore: avoid_print
      // print(_lastCapturedData!.toJson());
    } else {
      // ignore: avoid_print
      print('User canceled capture');
    }
    setState(() {});
  }

  Widget _buildBody(BuildContext context) {
    return PreferenceList(
      children: <Widget>[
        if (Platform.isMacOS)
          PreferenceListSection(
            children: [
              PreferenceListItem(
                title: const Text('isAccessAllowed'),
                accessoryView: Text('$_isAccessAllowed'),
                onTap: () async {
                  bool allowed =
                      await ScreenCapturer.instance.isAccessAllowed();
                  // BotToast.showText(text: 'allowed: $allowed');
                  setState(() {
                    _isAccessAllowed = allowed;
                  });
                },
              ),
              PreferenceListItem(
                title: const Text('requestAccess'),
                onTap: () async {
                  await ScreenCapturer.instance.requestAccess();
                },
              ),
            ],
          ),
        PreferenceListSection(
          title: const Text('METHODS'),
          children: [
            PreferenceListItem(
              title: const Text('capture'),
              accessoryView: Row(children: [
                CupertinoButton(
                  child: const Text('region'),
                  onPressed: () {
                    _handleClickCapture(CaptureMode.region);
                  },
                ),
                CupertinoButton(
                  child: const Text('screen'),
                  onPressed: () {
                    _handleClickCapture(CaptureMode.screen);
                  },
                ),
                CupertinoButton(
                  child: const Text('window'),
                  onPressed: () {
                    _handleClickCapture(CaptureMode.window);
                  },
                ),
              ]),
            ),
          ],
        ),
        if (_lastCapturedData != null && _lastCapturedData?.imagePath != null)
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: 400,
            height: 400,
            child: Image.file(
              File(_lastCapturedData!.imagePath!),
            ),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: _buildBody(context),
    );
  }
}