import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'chat_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late VideoPlayerController _controller;
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/back_vid.mp4')
      ..setLooping(true)
      ..play()
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _controller.value.isInitialized
              ? VideoPlayer(_controller)
              : Container(),
          Positioned(
              top: MediaQuery.of(context).size.height / 5,
              child:

              SizedBox(

                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'UnifrakturMaguntia-Regular',

                  ),
                  child: AnimatedTextKit(
                    isRepeatingAnimation:true,
                    repeatForever: true,



                    animatedTexts: [

                      FlickerAnimatedText('Echoes of the abyss'),

                    ],

                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              ),


          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.6,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.6,
                ),
                Stack(
                  children: [
                    Image.asset(
                      'assets/images/paint.png',
                      color: Colors.white,
                    ),
                    Positioned(
                      top: 30,
                      left: 60,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Start Game",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: 'UnifrakturMaguntia-Regular',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Positioned(
                  top: 100,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/paint.png',
                        color: Colors.white,
                      ),
                      Positioned(
                        top: 30,
                        left: 60,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return const ChatScreen();
                            }));
                          },
                          child: Text("Continue",
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontFamily: 'UnifrakturMaguntia-Regular',
                              )),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 200,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/paint.png',
                        color: Colors.white,
                      ),
                      Positioned(
                        top: 30,
                        left: 60,
                        child: TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.settings,
                              size: 50,
                              color: Colors.black,
                            ),
                            label: Text(
                              "Settings",
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontFamily: 'UnifrakturMaguntia-Regular',
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
