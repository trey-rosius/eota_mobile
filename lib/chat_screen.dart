
import 'package:eota/generated_image.dart';
import 'package:eota/models/ConversationResponse.dart';
import 'package:eota/providers/game_repository.dart';
import 'package:eota/puzzle_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'package:provider/provider.dart';
import 'message.dart';
import 'message_bubble.dart';

import 'dart:async';
import 'dart:convert';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/foundation.dart';

import 'models/Option.dart';

class Relic {
  final String name;
  final String asset;

  Relic({required this.name, required this.asset});
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController textEditingController = TextEditingController();
  late final Stream<GraphQLResponse<String>> onNotifyConversationResponseStream;
  Future<void> subscribeToOnNotifyStateResponse(
      GameplayRepository gameRepo) async {
    String graphQLDocument = '''
    subscription onNotifyConversationResponse{
  onNotifyConversationResponse {
    id
    conversationType
    imageUrl
    message
    puzzleId
    relicId
    characterId
    chapterId
    firstConversation
    hasOptions
  }
  
}
 

''';

    onNotifyConversationResponseStream = Amplify.API.subscribe(
      GraphQLRequest<String>(
        document: graphQLDocument,
        apiName: "EOTA-api_API_KEY",
      ),
      onEstablished: () => print('Subscription established'),
    );

    try {
      await for (var event in onNotifyConversationResponseStream) {
        if (kDebugMode) {
          print("notify Conversation stream $event");
        }
        Map jsonComment = json.decode(event.data!);
        ConversationResponse conversationResponse =
            ConversationResponse.fromJson(
                jsonComment['onNotifyConversationResponse']);

        if (kDebugMode) {
          print("event message data is ${event.data}");
        }

        if (gameRepo.conversationResponses.isNotEmpty) {
          if (gameRepo.conversationResponses[0].id != conversationResponse.id) {
            gameRepo.conversationResponse = conversationResponse;
            if (kDebugMode) {
              print("conversation response message ${conversationResponse.message}");
            }
            SchedulerBinding.instance.addPostFrameCallback((_) {
              _scrollController.animateTo(
                _scrollController.position.maxScrollExtent,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOut,
              );
            });

          }
        } else {
          if (kDebugMode) {
            print("conversation response message 2 ${conversationResponse.message}");
          }
          SchedulerBinding.instance.addPostFrameCallback((_) {
            _scrollController.animateTo(
              _scrollController.position.maxScrollExtent,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
            );
          });
          gameRepo.conversationResponse = conversationResponse;
        }
        if(conversationResponse.hasOptions!){
          gameRepo.activateTextfield =false;
          gameRepo.getConversationOptions(conversationResponse.id);
        }
        if(conversationResponse.conversationType.name =="PUZZLE"){
          //activate textfield
          gameRepo.activateTextfield =true;
        }


        if (kDebugMode) {
          //  print("all list messages are $chatMessagesList");
          print('Subscription event data received: ${event.data}');
        }
      }
    } on Exception catch (e) {
      if (kDebugMode) {
        print('Error in subscription stream: $e');
      }
    }
  }

  @override
  void initState() {
    var gameRepo = context.read<GameplayRepository>();

    Future.delayed(Duration.zero).then((_) async {
      subscribeToOnNotifyStateResponse(gameRepo);
    });
    super.initState();
  }

  Widget buildInput( GameplayRepository gameRepo) {

    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      child: Row(
        children: <Widget>[
          // Button send image
          Container(
            margin: const EdgeInsets.only(left: 10.0),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle),
            child: IconButton(
              icon: const Icon(Icons.camera_alt),
              //  onPressed: ()=>getImageFromCamera(chatRepo),
              onPressed: () => {},
              color: Colors.white,
            ),
          ),

          // Edit text
          Flexible(
            child: Container(
              // margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 15.0),
              //  padding: EdgeInsets.symmetric(vertical: 10.0),

              child: Scrollbar(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  reverse: true,
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      maxLines: null,
                      onChanged: (String text) {
                        if (text.trim().isNotEmpty) {
                          //send
                        } else {
                          //send
                        }
                      },

                      style: const TextStyle(
                          color: Colors.white, fontSize: 15.0),
                      controller: textEditingController,
                      decoration: const InputDecoration(
                        hintText: 'start typing or paste something',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Button send message
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle),
            child: Center(
              child: IconButton(
                icon: const Icon(Icons.arrow_forward),
                onPressed: ()
                {

                },
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    onNotifyConversationResponseStream.drain();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    var gameRepo = context.watch<GameplayRepository>();
    return Scaffold(
      backgroundColor:
          Colors.black, // Black background for the supernatural feel
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () =>
        gameRepo.sendOption(
        conversationId: "e5c47224-c25c-4270-8dcf-8f3d152b5e0c",
        gameState:  "CONTINUE",
        nextStepType: "PUZZLE",
       // nextStepType: "CONVERSATION",
        puzzleId:"2f304d24-c485-4f8d-983b-e570f862429f"

    ),
                  /*
                  gameRepo.sendOption(
                  conversationId: "e5c47224-c25c-4270-8dcf-8f3d152b5e0c",
                 gameState:  "NEW",
                  nextStepType: "CONVERSATION",
                 optionId:  "18bdcb52-4d0f-4740-a870-d5819e2a3b63",
                  puzzleId:""

              ),

                   */
              child: Text("Start Game"))
        ],
        title: Text(
          'Echoes of the Abyss',
          style: TextStyle(
            //fontFamily: 'Cinzel', // Use a serif font for the title
            fontSize: 24,
            fontFamily: 'UnifrakturMaguntia-Regular',
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/backgroud.jpg'), // Subtle background image
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
           Expanded(
             child: Container(

                 height: size.height/1.6,
                  child: ListView.builder(
                    controller: _scrollController,
                    itemCount: gameRepo.conversationResponses.length,
                    itemBuilder: (context, index) {
                      return  gameRepo.conversationResponses[index].conversationType.name =="CONVERSATION"?
                      MessageBubble(
                        conversationResponse: gameRepo.conversationResponses[index],

                      ):
                      gameRepo.conversationResponses[index].conversationType.name =="PUZZLE" ?
                      PuzzleWidget(conversationResponse: gameRepo.conversationResponses[index]) :

                      GeneratedImage(conversationResponse: gameRepo.conversationResponses[index]);
                    },
                  ),
                ),
           ),

          gameRepo.activateTextfield ? buildInput(gameRepo):SizedBox(),
           gameRepo.options.isEmpty ? SizedBox(): Container(
             padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
             child: Wrap(
               spacing: 8.0, // gap between adjacent chips
               runSpacing: 4.0, // gap between lines
               children:[
                 for(Option option in gameRepo.options)
                  OptionWidget(option: option,)
               ]
             ),

            )

          ],
        ),
      ),
    );
  }
}

class OptionWidget extends StatefulWidget {
   const OptionWidget({required this.option});
  final Option option;

  @override
  State<OptionWidget> createState() => _OptionWidgetState();
}

class _OptionWidgetState extends State<OptionWidget> {
  @override
  Widget build(BuildContext context) {
    var gameRepo = context.watch<GameplayRepository>();
    return InkWell(
      onTap: (){
        gameRepo.notifyConversationResponse(widget.option.id, "CONVERSATION", widget.option.optionText
            );

        Future.delayed(Duration(seconds: 2)).then((_) async {

          gameRepo.sendOption(conversationId:widget.option.nextConversationId, gameState: "CONTINUE",
              nextStepType: widget.option.nextStepType.name,optionId: widget.option.id,);
        });



      },
      child: Container(

        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        decoration: BoxDecoration(
          color:Colors.grey.shade800,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
            bottomLeft:
            Radius.circular(50) ,
            bottomRight:
            Radius.circular(50),
          ),
        ),
        child: Text(
          widget.option.optionText,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

