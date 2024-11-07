/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, override_on_non_overriding_member, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'package:amplify_core/amplify_core.dart' as amplify_core;
import 'Chapter.dart';
import 'Chapters.dart';
import 'Character.dart';
import 'Characters.dart';
import 'Conversation.dart';
import 'ConversationResponse.dart';
import 'Conversations.dart';
import 'Option.dart';
import 'Options.dart';
import 'Player.dart';
import 'Puzzle.dart';
import 'Puzzles.dart';

export 'CHARACTER_ROLE.dart';
export 'CONVERSATIONTYPE.dart';
export 'Chapter.dart';
export 'Chapters.dart';
export 'Character.dart';
export 'Characters.dart';
export 'Conversation.dart';
export 'ConversationResponse.dart';
export 'Conversations.dart';
export 'GAMESTATE.dart';
export 'Option.dart';
export 'Options.dart';
export 'PUZZLETYPE.dart';
export 'Player.dart';
export 'Puzzle.dart';
export 'Puzzles.dart';

class ModelProvider implements amplify_core.ModelProviderInterface {
  @override
  String version = "42e0df097b712e292865b87e96b9aa3a";
  @override
  List<amplify_core.ModelSchema> modelSchemas = [];
  @override
  List<amplify_core.ModelSchema> customTypeSchemas = [Chapter.schema, Chapters.schema, Character.schema, Characters.schema, Conversation.schema, ConversationResponse.schema, Conversations.schema, Option.schema, Options.schema, Player.schema, Puzzle.schema, Puzzles.schema];
  static final ModelProvider _instance = ModelProvider();

  static ModelProvider get instance => _instance;

  @override
  amplify_core.ModelType<amplify_core.Model> getModelTypeByModelName(String modelName) {
    // TODO: implement getModelTypeByModelName
    throw UnimplementedError();
  }
}


class ModelFieldValue<T> {
  const ModelFieldValue.value(this.value);

  final T value;
}
