import 'dart:convert';

import 'package:eota/models/ConversationResponse.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

import 'package:amplify_storage_s3/amplify_storage_s3.dart';
class GameplayRepository extends ChangeNotifier {

  GameplayRepository.instance();
  List<ConversationResponse> _conversationResponse = [];


  List<ConversationResponse> get conversationResponses => _conversationResponse;

  set conversationResponses(List<ConversationResponse> value) {
    _conversationResponse = value;
    notifyListeners();
  }

  set conversationResponse(ConversationResponse value) {
    _conversationResponse.insert(0, value);
    notifyListeners();

  }

  Future<void> sendOption(String conversationId, String gameState,
      String nextStepType, String optionId) async {
    try {
      String graphQLDocument = '''
    mutation sendOption(\$conversationId:String!,\$gameState:GAMESTATE!,\$nextStepType:String!,\$optionId:String!) {
  sendOption(
    input: {
      gameState: \$gameState,
      nextStepType: \$nextStepType,
      conversationId: \$conversationId,
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
              "optionId": optionId
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

}

