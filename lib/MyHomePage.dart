import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playerapp2/widget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  int value = 30;
  bool isSelected = false;
  bool repeatSelected = false;
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text("Player App"),
            centerTitle: true,
            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: MyContainer(
                    child: Image.asset(
                      "lib/images/music.jpg",
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Center(
                            child: Text(
                              "Artist Track",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          const Center(
                              child: Text(
                            "NAAT IS PLAYING",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                          Slider(
                            activeColor: Colors.white,
                              thumbColor: Colors.cyan,
                              min: 00,
                              max: 100,
                              value: widget.value.toDouble(),
                              onChanged: (double nvalue) {
                                setState(() {
                                  widget.value = nvalue.round();
                                });
                              }),
                          Center(
                              child: Text(
                            "VOLUME " + widget.value.toString(),
                            style: TextStyle(color: Colors.white),
                          )),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              if (widget.isSelected == false) {
                                widget.isSelected = true;
                              } else {
                                widget.isSelected = false;
                              }
                            });
                          },
                          child: MyContainer(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.shuffle,
                                  size: 100,
                                  color: widget.isSelected
                                      ? Colors.red
                                      : Colors.white,
                                ),
                                Text("SHUFFLE",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: widget.isSelected
                                            ? Colors.red
                                            : Colors.white))
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              if (widget.repeatSelected == false) {
                                widget.repeatSelected = true;
                              } else {
                                widget.repeatSelected = false;
                              }
                            });
                          },
                          child: MyContainer(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.repeat,
                                  size: 100,
                                  color: widget.repeatSelected
                                      ? Colors.red
                                      : Colors.white,
                                ),
                                Text("REPEAT",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
