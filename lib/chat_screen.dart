import 'package:flutter/material.dart';

class Message {
  final String text;
  final bool isPlayer;

  Message({required this.text, required this.isPlayer});
}

class Relic{
  final String name;
  final String asset;

  Relic({required this.name,required this.asset});
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

List<Relic> relics = [
  Relic(name: 'Obsidian Heart', asset: "assets/images/obsidian.jpg"),
  Relic(name: 'Celestial Compass', asset: "assets/images/celestial_compass.jpg"),
  Relic(name: 'Whispering Quill', asset: "assets/images/whisperer_quill.jpg"),
  Relic(name: 'Veil of Shadows', asset: "assets/images/veil_shadows.jpg"),
  Relic(name: 'Ankh of Transcendence', asset: "assets/images/ankh_of_transcendence.jpg"),
];

List<Message> messages = [
  Message(
    text: 'If you\'re seeking the truth behind the unexplained, Ravenswood holds secrets begging to be uncovered. Your skills are needed here.',
    isPlayer: false,
  ),
  // Initial NPC message
];


class _ChatScreenState extends State<ChatScreen> {


  List<String> responseOptions = [
    'Who is this? How did you get my number?',
    'What kind of secrets?',
    'I\'m on my way.',
  ];

  void addMessage(String text, bool isPlayer) {
    setState(() {
      messages.add(Message(text: text, isPlayer: isPlayer));
    });
  }

  void handleResponse(String response) {
    addMessage(response, true);

    // NPC replies based on the player's response
    String npcReply = '';
    if (response == 'What kind of secrets?') {
      npcReply = 'Strange occurrences that defy explanation. Come to Ravenswood and see for yourself.';
    } else if (response == 'I\'m on my way.') {
      npcReply = 'We await your arrival. Be cautious.';
    } else {
      npcReply = 'All will be revealed in time.';
    }

    Future.delayed(Duration(seconds: 1), () {
      addMessage(npcReply, false);
    });

    // Update response options or progress the game state as needed
    setState(() {
      responseOptions = []; // Clear options or provide new ones
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Black background for the supernatural feel
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
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
            image: AssetImage('assets/images/backgroud.jpg'), // Subtle background image
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(16),
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return MessageBubble(message: messages[index]);
                },
              ),
            ),
            SizedBox(
              height: 300,
              child: GridView.builder(
                  itemCount: relics.length,

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,childAspectRatio: 2.8/4),
                itemBuilder: (BuildContext context, int index) {
                    return Container(
      padding: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Image.asset(relics[index].asset),
                          Text(relics[index].name,style: TextStyle(
                            fontSize: 15,
                            color: Colors.white
                          ),)
                        ],
                      ),
                    );
                },),
            )
            /*
            if (responseOptions.isNotEmpty)
              Container(
                color: Colors.black54,
                child: Column(
                  children: responseOptions.map((option) {
                    return ListTile(
                      title: Text(
                        option,
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        handleResponse(option);
                      },
                    );
                  }).toList(),
                ),
              ),
            */
          ],
        ),
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final Message message;

  MessageBubble({required this.message});

  @override
  Widget build(BuildContext context) {
    bool isPlayer = message.isPlayer;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      alignment: isPlayer ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.75,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: isPlayer ? Colors.blueGrey.shade800 : Colors.grey.shade800,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
              bottomLeft: isPlayer ? Radius.circular(16) : Radius.circular(0),
              bottomRight: isPlayer ? Radius.circular(0) : Radius.circular(16),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              message.text,
              style: TextStyle(color: Colors.white70, fontSize: 16,),
            ),
          ),
        ),
      ),
    );
  }
}
