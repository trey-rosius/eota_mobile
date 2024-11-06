import 'package:eota/home_screen.dart';
import 'package:eota/message_repository.dart';
import 'package:eota/models/ConversationResponse.dart';
import 'package:eota/providers/game_repository.dart';
import 'package:flutter/material.dart';
import 'package:pretty_animated_text/pretty_animated_text.dart';
import 'package:provider/provider.dart';
import 'message.dart';
import 'message_bubble.dart';

import 'dart:async';
import 'dart:convert';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

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
        print("notify Conversation stream $event");
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
          }
        } else {
          gameRepo.conversationResponse = conversationResponse;
        }
        gameRepo.getConversationOptions(conversationResponse.id);
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

  @override
  void dispose() {
    onNotifyConversationResponseStream.drain();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   // MessageRepository messageRepo = context.watch<MessageRepository>();
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
              onPressed: () => gameRepo.sendOption(
                  "e5c47224-c25c-4270-8dcf-8f3d152b5e0c",
                  "NEW",
                  "CONVERSATION",
                  "18bdcb52-4d0f-4740-a870-d5819e2a3b63"),
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
              child: ListView.builder(
                itemCount: gameRepo.conversationResponses.length,
                itemBuilder: (context, index) {
                  return MessageBubble(
                    conversationResponse: gameRepo.conversationResponses[index],

                  );
                },
              ),
            ),
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
    return Container(

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
    );
  }
}

