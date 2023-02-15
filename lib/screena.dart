// import 'dart:async';
// import 'dart:typed_data';

// import 'package:flutter/material.dart';
// import 'package:image_gallery_saver/image_gallery_saver.dart';
// import 'package:screenshot/screenshot.dart';

// class AutoScreenCapture extends StatefulWidget {
//   const AutoScreenCapture({super.key});

//   @override
//   State<AutoScreenCapture> createState() => _AutoScreenCaptureState();
// }

// class _AutoScreenCaptureState extends State<AutoScreenCapture> {
//   final controller = ScreenshotController();

//   Future<String> saveImage(Uint8List bytes) async {
//     // await [Permission.storage].request();   #add in manifestfile
//     final time = DateTime.now()
//         .toIso8601String()
//         .replaceAll('.', '-')
//         .replaceAll(':', '-');
//     final name = 'Screenshot_$time';
//     final result = await ImageGallerySaver.saveImage(bytes, name: name);
//     return result['filePath'];
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     Timer mytimer = Timer.periodic(Duration(seconds: 10), (timer) async {
//       final image = await controller.capture();
//       if (image == null) return;

//       await saveImage(image);
//       //code to run on every 5 seconds
//       // String? path = await NativeScreenshot.takeScreenshot();

//       // debugPrint('Screenshot taken, path: $path');

//       // if (path == null || path.isEmpty) {
//       //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//       //     content: Text('Error taking the screenshot :('),
//       //     backgroundColor: Colors.red,
//       //   )); // showSnackBar()

//       //   return;
//       // } // if error

//       // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//       //     content: Text(
//       //         'The screenshot has been saved to: $path'))); // showSnackBar()

//       // File imgFile = File(path);
//       // _imgHolder = Image.file(imgFile);

//       setState(() {});
//     });
//   }

//   @override
//   Widget build(BuildContext context) =>
//       // {
//       Screenshot(
//         controller: controller,
//         child: Scaffold(
//           appBar: AppBar(
//             title: Text("Aumatic Capture Screen"),
//           ),
//           body: Container(
//             color: Colors.amber,
//             child: Center(
//               child: Text("This page is about Screenshot "),
//             ),
            
//           ),
//         ),
//       );
//   // }
// }
