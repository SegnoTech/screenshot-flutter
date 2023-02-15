// // import 'dart:async';
// // // import 'dart:ffi';
// // import 'dart:io';
// // import 'dart:typed_data';
// // // import 'dart:typed_data';
// // import 'package:flutter/material.dart';
// // import 'package:image_gallery_saver/image_gallery_saver.dart';
// // // import 'package:image_gallery_saver/image_gallery_saver.dart';
// // // import 'package:native_screenshot/native_screenshot.dart';
// // // import 'package:permission_handler/permission_handler.dart';
// // import 'package:screenshot/screenshot.dart';
// // import 'package:image_downloader_web/image_downloader_web.dart';

// // import 'screena.dart';
// // import 'web_screen.dart';

// // import 'dart:typed_data';

// // import 'package:flutter/material.dart';
// // import 'package:screenshot/screenshot.dart';
// // // import 'package:webview_flutter/webview_flutter.dart';
// // // import 'package:image_gallery_saver/image_gallery_saver.dart';

// // void main() => runApp(MyApp());

// // class MyApp extends StatelessWidget {
// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Demo',
// //       theme: ThemeData(
// //         textTheme: TextTheme(
// //             headline6: TextStyle(
// //           color: Colors.yellow,
// //           fontSize: 50,
// //         )),
// //         primarySwatch: Colors.blue,
// //       ),
// //       home: MyHomePage(title: 'Screenshot Demo Home Page'),
// //     );
// //   }
// // }

// // class MyHomePage extends StatefulWidget {
// //   MyHomePage({Key? key, required this.title}) : super(key: key);
// //   final String title;

// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }

// // class _MyHomePageState extends State<MyHomePage> {
// //   //Create an instance of ScreenshotController
// //   ScreenshotController screenshotController = ScreenshotController();

// //   @override
// //   void initState() {
// //     // if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
// //     super.initState();
// //     Timer mytimer = Timer.periodic(Duration(seconds: 10), (timer) async {
// //       screenshotController
// //           .capture(delay: Duration(milliseconds: 10))
// //           .then((capturedImage) async {
// //         ShowCapturedWidget(context, capturedImage!);
// //       }).catchError((onError) {
// //         print(onError);
// //       });
// //       setState(() {});
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(widget.title),
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Screenshot(
// //               controller: screenshotController,
// //               child: Container(
// //                   padding: const EdgeInsets.all(30.0),
// //                   decoration: BoxDecoration(
// //                     border: Border.all(color: Colors.blueAccent, width: 5.0),
// //                     color: Colors.amberAccent,
// //                   ),
// //                   child: Text("This widget will be captured as an image")),
// //             ),
// //             SizedBox(
// //               height: 25,
// //             ),
// //             ElevatedButton(
// //               child: Text(
// //                 'Capture Above Widget',
// //               ),
// //               onPressed: () {
// //                 // screenshotController
// //                 //     .capture(delay: Duration(milliseconds: 10))
// //                 //     .then((capturedImage) async {
// //                 //   ShowCapturedWidget(context, capturedImage!);
// //                 // }).catchError((onError) {
// //                 //   print(onError);
// //                 // });
// //               },
// //             ),
// //             // ElevatedButton(
// //             //   child: Text(
// //             //     'Capture An Invisible Widget',
// //             //   ),
// //             //   onPressed: () {
// //             //     var container = Container(
// //             //         padding: const EdgeInsets.all(30.0),
// //             //         decoration: BoxDecoration(
// //             //           border: Border.all(color: Colors.blueAccent, width: 5.0),
// //             //           color: Colors.redAccent,
// //             //         ),
// //             //         child: Text(
// //             //           "This is an invisible widget",
// //             //           style: Theme.of(context).textTheme.headline6,
// //             //         ));
// //             //     screenshotController
// //             //         .captureFromWidget(
// //             //             InheritedTheme.captureAll(
// //             //                 context, Material(child: container)),
// //             //             delay: Duration(seconds: 1))
// //             //         .then((capturedImage) {
// //             //       ShowCapturedWidget(context, capturedImage);
// //             //     });
// //             //   },
// //             // ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   Future<dynamic> ShowCapturedWidget(
// //       BuildContext context, Uint8List capturedImage) {
// //     return showDialog(
// //       useSafeArea: false,
// //       context: context,
// //       builder: (context) => Scaffold(
// //         appBar: AppBar(
// //           title: Text("SS"),
// //         ),
// //         body: Center(
// //             child: capturedImage != null
// //                 ?
// //                  Container(height: 300,
// //                 width: 300,
// //                   child: CircleAvatar(
// //                     child: Image.memory(capturedImage),),
// //                 )
// //                 // Container(height: 500,width: 500,
// //                 //   child: ClipRRect(
// //                 //       borderRadius: BorderRadius.circular(24),
// //                 //       child: Image.memory(
// //                 //         capturedImage,
// //                 //       ),
// //                 //     ),
// //                 // )
// //                 : Container()),
// //       ),
// //     );
// //   }

// //   // _saved(File image) async {
// //   //   // final result = await ImageGallerySaver.save(image.readAsBytesSync());
// //   //   print("File Saved to Gallery");
// //   // }
// // }

// // /*void main() => runApp(AutoScreenCapture());
// // class AutoScreenCapture extends StatefulWidget {
// //   const AutoScreenCapture({super.key});

// //   @override
// //   State<AutoScreenCapture> createState() => _AutoScreenCaptureState();
// // }

// // class _AutoScreenCaptureState extends State<AutoScreenCapture> {
// //   final controller = ScreenshotController();

// // // final uint8List = Uint8List;
// //   Future<void> saveImage(Uint8List bytes) async {
// //     // await [Permission.storage].request();   #add in manifestfile
// //     final time = DateTime.now()
// //         .toIso8601String()
// //         .replaceAll('.', '-')
// //         .replaceAll(':', '-');
// //     final name = 'Screenshot_$time';
// //     // final result = await ImageGallerySaver.saveImage(bytes, name: name);
// //     final result = await WebImageDownloader.downloadImageFromWeb(bytes as String, imageQuality: 0.5, name: name);

// //     // return result['filePath'];
// //     return result;
// //   } 

// //     bool downloading = false;

// //   /*Future<void> _downloadImage() async {
// //     setState(() {
// //       downloading = true;
// //     });
// //     const _url = "https://picsum.photos/200";
// //     await WebImageDownloader.downloadImageFromWeb(
// //       _url,
// //       name: 'image01',
// //       imageType: ImageType.png,
// //     );
// //     setState(() {
// //       downloading = false;
// //     });
// //   }*/

// //   @override
// //   void initState() {
// //     // TODO: implement initState
// //     super.initState();
// //     Timer mytimer = Timer.periodic(Duration(seconds: 10), (timer) async {
// //       final image = await controller.capture();
// //       if (image == null) return;

// //       await saveImage(image);
// //       //code to run on every 5 seconds
// //       // String? path = await NativeScreenshot.takeScreenshot();

// //       // debugPrint('Screenshot taken, path: $path');

// //       // if (path == null || path.isEmpty) {
// //       //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
// //       //     content: Text('Error taking the screenshot :('),
// //       //     backgroundColor: Colors.red,
// //       //   )); // showSnackBar()

// //       //   return;
// //       // } // if error

// //       // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
// //       //     content: Text(
// //       //         'The screenshot has been saved to: $path'))); // showSnackBar()

// //       // File imgFile = File(path);
// //       // _imgHolder = Image.file(imgFile);

// //       setState(() {});
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) => MaterialApp(
// //       // {
// //       home:Screenshot(
// //         controller: controller,
// //         child: Scaffold(
// //           appBar: AppBar(
// //             title: Text("Aumatic Capture Screen"),
// //           ),
// //           body: Container(
// //             color: Colors.amber,
// //             child: Center(
// //               child: Text("This page is about Screenshot "),
// //             ),
            
// //           ),
// //         ),
// //       ),
// //   );
// //   // }
// // }*/

// // /*class MyHomePage extends StatefulWidget {
// //   MyHomePage({Key? key,}) : super(key: key);

// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }

// // class _MyHomePageState extends State<MyHomePage> {
// //   //Create an instance of ScreenshotController
// //   ScreenshotController screenshotController = ScreenshotController();

// //   @override
// //   void initState() {
// //     // if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
// //     super.initState();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     // This method is rerun every time setState is called, for instance as done
// //     // by the _incrementCounter method above.
// //     //
// //     // The Flutter framework has been optimized to make rerunning build methods
// //     // fast, so that you can just rebuild anything that needs updating rather
// //     // than having to individually change instances of widgets.
// //     return Scaffold(
// //       appBar: AppBar(
// //         // Here we take the value from the MyHomePage object that was created by
// //         // the App.build method, and use it to set our appbar title.
// //         title: Text("WEb Application"),
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Screenshot(
// //               controller: screenshotController,
// //               child: Container(
// //                   padding: const EdgeInsets.all(30.0),
// //                   decoration: BoxDecoration(
// //                     border: Border.all(color: Colors.blueAccent, width: 5.0),
// //                     color: Colors.amberAccent,
// //                   ),
// //                   child: Text("This widget will be captured as an image")),
// //             ),
// //             SizedBox(
// //               height: 25,
// //             ),
// //             ElevatedButton(
// //               child: Text(
// //                 'Capture Above Widget',
// //               ),
// //               onPressed: () {
// //                 screenshotController
// //                     .capture(delay: Duration(milliseconds: 10))
// //                     .then((capturedImage) async {
// //                   ShowCapturedWidget(context, capturedImage!);
// //                 }).catchError((onError) {
// //                   print(onError);
// //                 });
// //               },
// //             ),
// //             ElevatedButton(
// //               child: Text(
// //                 'Capture An Invisible Widget',
// //               ),
// //               onPressed: () {
// //                 var container = Container(
// //                     padding: const EdgeInsets.all(30.0),
// //                     decoration: BoxDecoration(
// //                       border: Border.all(color: Colors.blueAccent, width: 5.0),
// //                       color: Colors.redAccent,
// //                     ),
// //                     child: Text(
// //                       "This is an invisible widget",
// //                       style: Theme.of(context).textTheme.headline6,
// //                     ));
// //                 screenshotController
// //                     .captureFromWidget(
// //                         InheritedTheme.captureAll(
// //                             context, Material(child: container)),
// //                         delay: Duration(seconds: 1))
// //                     .then((capturedImage) {
// //                   ShowCapturedWidget(context, capturedImage);
// //                 });
// //               },
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   Future<dynamic> ShowCapturedWidget(
// //       BuildContext context, Uint8List capturedImage) {
// //     return showDialog(
// //       useSafeArea: false,
// //       context: context,
// //       builder: (context) => Scaffold(
// //         appBar: AppBar(
// //           title: Text("Captured widget screenshot"),
// //         ),
// //         body: Center(
// //             child: capturedImage != null
// //                 ? Image.memory(capturedImage)
// //                 : Container()),
// //       ),
// //     );
// //   }

// //   // _saved(File image) async {
// //   //   // final result = await ImageGallerySaver.save(image.readAsBytesSync());
// //   //   print("File Saved to Gallery");
// //   // }
// // }*/

// // /*class MyApp extends StatefulWidget {
// //   @override
// //   _MyAppState createState() => _MyAppState();
// // }

// // class _MyAppState extends State<MyApp> {
// //   late Widget _imgHolder;

// //   @override
// //   void initState() {
// //     super.initState();

// //     _imgHolder = Center(
// //       child: Icon(Icons.image),
// //     );
// //     Timer mytimer = Timer.periodic(Duration(seconds: 10), (timer) async {
// //       //code to run on every 5 seconds
// //       String? path = await NativeScreenshot.takeScreenshot();

// //       debugPrint('Screenshot taken, path: $path');

// //       if (path == null || path.isEmpty) {
// //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
// //           content: Text('Error taking the screenshot :('),
// //           backgroundColor: Colors.red,
// //         )); // showSnackBar()

// //         return;
// //       } // if error

// //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
// //           content: Text(
// //               'The screenshot has been saved to: $path'))); // showSnackBar()

// //       File imgFile = File(path);
// //       _imgHolder = Image.file(imgFile);

// //       setState(() {});
// //     });
// //   } // initState()

// //   final controller = ScreenshotController();

// //   @override
// //   Widget build(BuildContext context) => MaterialApp(
// //         home:
// //             // Screenshot(
// //             //   controller: controller,
// //             //   child:
// //             Scaffold(
// //           appBar: AppBar(
// //             title: Text('NativeScreenshot Example'),
// //           ),drawer: MyHomePage(),
// //           bottomNavigationBar: ButtonBar(
// //             alignment: MainAxisAlignment.center,
// //             children: <Widget>[
// //               ElevatedButton(
// //                 child: Text('press here'),
// //                 onPressed: () {
// //                   Navigator.push(context,
// //                     MaterialPageRoute(builder: (context) => AutoScreenCapture()));
// //                   // takeScreenshot("ScreenS");
// //                   // Timer mytimer =
// //                   //     Timer.periodic(Duration(seconds: 5), (timer) async {
// //                   //   //code to run on every 5 seconds
// //                   //   String? path = await NativeScreenshot.takeScreenshot();

// //                   //   debugPrint('Screenshot taken, path: $path');

// //                   //   if (path == null || path.isEmpty) {
// //                   //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
// //                   //       content: Text('Error taking the screenshot :('),
// //                   //       backgroundColor: Colors.red,
// //                   //     )); // showSnackBar()

// //                   //     return;
// //                   //   } // if error

// //                   //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
// //                   //       content: Text(
// //                   //           'The screenshot has been saved to: $path'))); // showSnackBar()

// //                   //   File imgFile = File(path);
// //                   //   _imgHolder = Image.file(imgFile);

// //                   //   setState(() {});
// //                   // });
// //                 },
// //               )
// //             ],
// //           ),
// //           body: Container(
// //             constraints: BoxConstraints.expand(),
// //             child: _imgHolder,
            
// //           ),
// //         ),
// //       );
// //   // );
// //   // } // build()
// // } // _MyAppState  */

// // // extension on FlutterDriver {
// //   // Future<void> takeScreenshot(String name) async {
// //   //   final filePath = File('screenshots/$name.png');
// //   //   if (await filePath.exists()) {
// //   //     await filePath.delete(recursive: true);
// //   //   }
// //   //   final file = await filePath.create(recursive: true);
// //   //   final png = await screenshot();
// //   //   file.writeAsBytesSync(png);
// //   //   print('screenshot with name $name was taken');
// //   // }
  
// //   // screenshot() {
// //   // }
// // // }


// // /*final image = await controller.capture();
// // if(image == null) return;

// // await saveImage(image);

// // Future <String> saveImage(Uint8List bytes) async{
// //   // await [Permission.storage].request();   #add in manifestfile
// //   final time = DateTime.now()
// //     .toIso8601String()
// //     .replaceAll('.', '-')
// //     .replaceAll(':', '-');
// //   final name = 'Screenshot_$time';
// //   final result = await ImageGallerySaver.saveImage(bytes, name: name);
// //   return result['filePath'];
// // }  */

// import 'package:flutter/material.dart';
// import 'package:flutter_screen_capture/flutter_screen_capture.dart';
// import 'package:screen_retriever/screen_retriever.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   final _plugin = ScreenCapture();
//   Color? _color;
//   CapturedScreenArea? _screenArea;
//   CapturedScreenArea? _fullScreenArea;

//   @override
//   Widget build(BuildContext context) {
//     return RawKeyboardListener(
//       focusNode: FocusNode(),
//       onKey: (key) async {
//         switch (key.character) {
//           case 'c': // capture screen pixel
//             await _captureScreenPixel();
//             break;
//           case 'a': // capture screen area
//             await _captureScreenArea();
//             break;
//           case 'f': // capture full screen
//             await _captureFullScreen();
//             break;
//         }
//       },
//       child: MaterialApp(
//         home: Scaffold(
//           body: SingleChildScrollView(
//             padding: const EdgeInsets.all(32),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Screen pixel color',
//                   style: Theme.of(context).textTheme.headline6,
//                 ),
//                 const SizedBox(height: 24),
//                 Row(
//                   children: const [
//                     SizedBox(
//                       width: 64,
//                       height: 64,
//                       child: ScreenColorLiveView(),
//                     ),
//                     SizedBox(width: 24),
//                     Text('Live at cursor position'),
//                   ],
//                 ),
//                 const SizedBox(height: 24),
//                 Row(
//                   children: [
//                     Container(
//                       width: 64,
//                       height: 64,
//                       color: _color,
//                     ),
//                     const SizedBox(width: 24),
//                     const Text('Press C to capture color at cursor position'),
//                   ],
//                 ),
//                 const SizedBox(height: 64),
//                 Text(
//                   'Screen area',
//                   style: Theme.of(context).textTheme.headline6,
//                 ),
//                 const SizedBox(height: 24),
//                 Row(
//                   children: const [
//                     SizedBox(
//                       width: 72,
//                       height: 72,
//                       child: ScreenAreaLiveView(areaSize: 72 / 4),
//                     ),
//                     SizedBox(width: 24),
//                     Text('Live at cursor position'),
//                   ],
//                 ),
//                 const SizedBox(height: 24),
//                 Row(
//                   children: [
//                     if (_screenArea != null)
//                       CapturedScreenAreaView(area: _screenArea!),
//                     const SizedBox(width: 24),
//                     const Text('Press A to capture screen at cursor position'),
//                   ],
//                 ),
//                 const SizedBox(height: 64),
//                 Text(
//                   'Full screen',
//                   style: Theme.of(context).textTheme.headline6,
//                 ),
//                 const SizedBox(height: 24),
//                 const Text('Press F to capture the entire screen'),
//                 const SizedBox(height: 24),
//                 if (_fullScreenArea != null)
//                   CapturedScreenAreaView(area: _fullScreenArea!),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Future<void> _captureScreenPixel() async {
//     final cursorScreenPoint =
//         await ScreenRetriever.instance.getCursorScreenPoint();
//     final color = await _plugin.captureScreenColor(
//       cursorScreenPoint.dx,
//       cursorScreenPoint.dy,
//     );
//     setState(() {
//       _color = color;
//     });
//   }

//   Future<void> _captureScreenArea() async {
//     final cursorScreenPoint =
//         await ScreenRetriever.instance.getCursorScreenPoint();
//     final rect = Rect.fromCircle(center: cursorScreenPoint, radius: 72 / 2);
//     final area = await _plugin.captureScreenArea(rect);
//     setState(() {
//       _screenArea = area;
//     });
//   }

//   Future<void> _captureFullScreen() async {
//     final area = await _plugin.captureEntireScreen();
//     setState(() {
//       _fullScreenArea = area;
//     });
//   }
// }

import 'package:flutter/material.dart';
import 'package:bot_toast/bot_toast.dart';

import 'home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xff416ff4),
        canvasColor: Colors.white,
        scaffoldBackgroundColor: const Color(0xffF7F9FB),
        dividerColor: Colors.grey.withOpacity(0.3),
      ),
      builder: BotToastInit(),
      navigatorObservers: [BotToastNavigatorObserver()],
      home: HomePage(),
    );
  }
}