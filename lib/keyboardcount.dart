import 'package:flutter/material.dart';
import 'package:keyboard_event/keyboard_event.dart';

class KeyboardPressCount extends StatefulWidget {
  const KeyboardPressCount({Key? key}) : super(key: key);

  @override
  _KeyboardPressCountState createState() => _KeyboardPressCountState();
}

class _KeyboardPressCountState extends State<KeyboardPressCount> {
  String _platformVersion = 'Unknown';
  final List<String> _err = [];
  final List<String> _event = [];
  late KeyboardEvent keyboardEvent;
  int eventNum = 0;
  bool listenIsOn = false;

  @override
  void initState() {
    super.initState();
    keyboardEvent = KeyboardEvent();
  }

/*  void keyboardCount() {
    Switch(
      value: listenIsOn,
      onChanged: (bool newValue) {
        setState(() {
          listenIsOn = newValue;
          if (listenIsOn == true) {
            keyboardEvent.startListening((keyEvent) {
              setState(() {
                eventNum++;
                print("########");
                print(eventNum);
                print("KEYPRESS");
                if (keyEvent.vkName == 'ENTER') {
                  _event.last += '\n';
                } else if (keyEvent.vkName == 'BACK') {
                  _event.removeLast();
                }
                if (keyEvent.vkName == 'F5') {
                  _event.clear();
                } else {
                  _event.add(keyEvent.toString());
                }
                if (_event.length > 20) {
                  _event.removeAt(0);
                }
                debugPrint(keyEvent.toString());
              });
            });
          } else {
            keyboardEvent.cancelListening();
          }
        });
      },
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Platform Version: $_platformVersion'),
                      Row(
                        children: [
                          Text('$eventNum'),
                          Switch(
                            value: listenIsOn,
                            onChanged: (bool newValue) {
                              setState(() {
                                listenIsOn = newValue;
                                if (listenIsOn == true) {
                                  keyboardEvent.startListening((keyEvent) {
                                    setState(() {
                                      eventNum = eventNum + 1;
                                      // print(keyEvent);
                                      print("########");
                                      print(eventNum);
                                      print("KEYPRESS");
                                      // if (keyEvent.vkName == 'ENTER') {
                                      //   _event.last = '\n';
                                      // } else if (keyEvent.vkName == 'BACK') {
                                      //   _event.removeLast();
                                      // }
                                      // if (keyEvent.vkName == 'F5') {
                                      //   _event.clear();
                                      // } else {
                                      //   _event.add(keyEvent.toString());
                                      // }
                                      // if (_event.length > 20) {
                                      //   _event.removeAt(0);
                                      // }
                                      // debugPrint(keyEvent.toString());
                                    });
                                  });
                                } else {
                                  keyboardEvent.cancelListening();
                                }
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
      ),
    );
  }
}
