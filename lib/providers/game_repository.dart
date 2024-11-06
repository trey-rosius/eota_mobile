import 'dart:convert';

import 'package:eota/models/ConversationResponse.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

import 'package:amplify_storage_s3/amplify_storage_s3.dart';

import '../models/Option.dart';
import '../models/Options.dart';
class GameplayRepository extends ChangeNotifier {

  GameplayRepository.instance();
  List<ConversationResponse> _conversationResponse = [];

  bool _loading = false;

  List<Option> _options = [];


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
    _conversationResponse.insert(0, value);
    notifyListeners();

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
      optionId
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

