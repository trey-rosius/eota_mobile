import 'dart:convert';

import 'package:eota/models/ConversationResponse.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import '../models/Option.dart';
import '../models/Options.dart';
import '../models/Puzzle.dart';
class GameplayRepository extends ChangeNotifier {

  GameplayRepository.instance();
  List<ConversationResponse> _conversationResponse = [];

  bool _loading = false;

  List<Option> _options = [];

  bool _activateTextfield = false;


  bool get activateTextfield => _activateTextfield;

  set activateTextfield(bool value) {
    _activateTextfield = value;
    notifyListeners();
  }

  List<Option> get options => _options;

  set options(List<Option> value) {
    _options = value;
    notifyListeners();
  }

  bool get loading => _loading;

  set loading(bool value) {
    _loading = value;
    notifyListeners();
  }

  List<ConversationResponse> get conversationResponses => _conversationResponse;

  set conversationResponses(List<ConversationResponse> value) {
    _conversationResponse = value;
    notifyListeners();
  }

  set conversationResponse(ConversationResponse value) {
    _conversationResponse.add(value);
    notifyListeners();

  }

  Future<Puzzle> getPuzzle(String puzzleId) async {
    loading = true;


    String graphQLDocument = '''
    
    
query getPuzzle(\$puzzleId: String!)  {
  getPuzzle(puzzleId: \$puzzleId) {
    chapterId
    decryptedMessage
    encryptedMessage
    hint
    id
    puzzleDescription
    puzzleId
    puzzleName
    puzzleType
  }
}
  ''';


    var operation = Amplify.API.query(
        request: GraphQLRequest<String>(
          document: graphQLDocument,
          apiName: "EOTA-api_API_KEY",
          variables: {
            "puzzleId":puzzleId

          },
        ));

    var response = await operation.response;
    if (kDebugMode) {
      print("returning ${response}");
    }

    final responseJson = json.decode(response.data!);
    loading = false;

    if (kDebugMode) {
      print("returning ${responseJson['getPuzzle']}");
    }

    Puzzle puzzle = Puzzle.fromJson(responseJson['getPuzzle']);

    if (kDebugMode) {
      print("returning puzzle");
    }
   return puzzle;

  }


  Future<void> getConversationOptions(String conversationId) async {
    loading = true;


    String graphQLDocument = '''
    
    query getConversationOptions(\$conversationId:String!) {
  getConversationOptions(
    conversationId: \$conversationId
  ) {
    items {
      conversationId
      id
      nextConversationId
      nextStepType
      optionText
      puzzleId
      relicId
    }
  }
}

  ''';


    var operation = Amplify.API.query(
        request: GraphQLRequest<String>(
          document: graphQLDocument,
          apiName: "EOTA-api_API_KEY",
          variables: {
            "conversationId":conversationId

          },
        ));

    var response = await operation.response;
    if (kDebugMode) {
      print("returning ${response}");
    }

    final responseJson = json.decode(response.data!);
    loading = false;

    if (kDebugMode) {
      print("returning ${responseJson['getConversationOptions']}");
    }

    Options list_options = Options.fromJson(responseJson['getConversationOptions']);

    if (kDebugMode) {
      print("returning $list_options");
    }
    options = list_options.items;

  }


  Future<void> sendOption({ required String conversationId, required String gameState,
      required String nextStepType, String? optionId, String? puzzleId}) async {
    try {
      String graphQLDocument = '''
    mutation sendOption(\$conversationId:String,\$gameState:GAMESTATE!,\$nextStepType:String!,\$optionId:String,
    \$puzzleId:String) {
  sendOption(
    input: {
      gameState: \$gameState,
      nextStepType: \$nextStepType,
      conversationId: \$conversationId,
      puzzleId:\$puzzleId,
      optionId: \$optionId
    }
  )
} ''';

      var operation = Amplify.API.mutate(


          request: GraphQLRequest<String>(
            document: graphQLDocument, apiName: "EOTA-api_API_KEY",
            variables: {
              "gameState": gameState,
              "nextStepType": nextStepType,
              "conversationId": conversationId,
              "optionId": optionId,
              "puzzleId": puzzleId,

            },));


      var response = await operation.response;
      print("response is $response");
      if (response.data != null) {
        final responseJson = json.decode(response.data!);
        if (kDebugMode) {
          print("here${responseJson['sendOption']}");
        }
      } else {
        print("something happened");
      }
    } catch (ex) {
      if (kDebugMode) {
        print(ex.toString());
      }
    }
  }


  Future<void> notifyConversationResponse(String id,String convoType,String message) async {

    if (kDebugMode) {
      print("id is $id");


    }

    try {
      String graphQLDocument = '''
    mutation notifyConversationResponse(\$id:String!, \$conversationType:CONVERSATIONTYPE!,\$characterId:String!, \$chapterId:String!,
     \$imageUrl: String,\$hasOptions:Boolean!,\$firstConversation:Boolean!, \$message:String,\$puzzleId:String,
        \$relicId:String
    ) {
  notifyConversationResponse(
        input: {
        id: \$id,
        conversationType: \$conversationType,
        characterId: \$characterId,
        chapterId: \$chapterId,
         hasOptions: \$hasOptions,
        firstConversation: \$firstConversation,
        imageUrl: \$imageUrl,
        message: \$message,
        puzzleId: \$puzzleId,
        relicId: \$relicId
      }
    ) {
      chapterId
      characterId
      conversationType
      id
      imageUrl
      message
      puzzleId
      relicId
      firstConversation
    hasOptions
    }
  
} ''';

      var operation = Amplify.API.mutate(


          request: GraphQLRequest<String>(
            document: graphQLDocument, apiName: "EOTA-api_API_KEY",
            variables: {
              "id": id,
              "conversationType":convoType,
              "hasOptions":true,
              "firstConversation":false,
              "message": message,
              "characterId":"character",
              "chapterId":"chapterId"

            },));


      var response = await operation.response;
      if (kDebugMode) {
        print("response is $response");
      }
      if (response.data != null) {
        final responseJson = json.decode(response.data!);
        if (kDebugMode) {
          print("here${responseJson['notifyConversationResponse']}");
        }
      } else {
        print("something happened");
      }
    } catch (ex) {
      if (kDebugMode) {
        print(ex.toString());
      }
    }
  }
}

