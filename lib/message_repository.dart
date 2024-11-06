import 'package:flutter/material.dart';

import 'message.dart';
class MessageRepository extends ChangeNotifier {
  MessageRepository.instance();

  List<Message> _listMessages=[
    Message(
      text:
      'If you\'re seeking the truth behind the unexplained, Ravenswood holds secrets begging to be uncovered. Your skills are needed here.',
      isPlayer: false,
    ),
    // Initial NPC message
  ];
  List<String> _responseOptions = [
    'Who is this? How did you get my number?',
    'What kind of secrets?',
    'I\'m on my way.',
  ];


  List<String> get responseOptions => _responseOptions;

  set responseOptions(List<String> value) {
    _responseOptions = value;
    notifyListeners();
  }

  List<Message> get listMessages => _listMessages;

  set listMessages(List<Message> value) {
    _listMessages = value;
    notifyListeners();
  }

  set addMessage(Message message){
    _listMessages.add(message);
    notifyListeners();

  }



  void handleResponse(String response) {
    addMessage=Message(text: response, isPlayer: true);

    // NPC replies based on the player's response
    String npcReply = '';
    if (response == 'What kind of secrets?') {
      npcReply =
      'Strange occurrences that defy explanation. Come to Ravenswood and see for yourself.';
    } else if (response == 'I\'m on my way.') {
      npcReply = 'We await your arrival. Be cautious.';
    } else {
      npcReply = 'All will be revealed in time.';
    }

    Future.delayed(Duration(seconds: 3), () {
      //addMessage(npcReply, false);
      addMessage=Message(text: npcReply, isPlayer: false);
    });

    // Update response options or progress the game state as needed

      responseOptions = []; // Clear options or provide new ones

  }



}