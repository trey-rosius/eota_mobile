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

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;


/** This is an auto generated class representing the Conversation type in your schema. */
class Conversation {
  final String? _chapterId;
  final String? _characterId;
  final String? _conversationId;
  final String id;
  final String? _message;

  String get chapterId {
    try {
      return _chapterId!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get characterId {
    try {
      return _characterId!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get conversationId {
    try {
      return _conversationId!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get message {
    try {
      return _message!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const Conversation._internal({required chapterId, required characterId, required conversationId, required this.id, required message}): _chapterId = chapterId, _characterId = characterId, _conversationId = conversationId, _message = message;
  
  factory Conversation({required String chapterId, required String characterId, required String conversationId, String? id, required String message}) {
    return Conversation._internal(
      chapterId: chapterId,
      characterId: characterId,
      conversationId: conversationId,
      id: id == null ? amplify_core.UUID.getUUID() : id,
      message: message);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Conversation &&
      _chapterId == other._chapterId &&
      _characterId == other._characterId &&
      _conversationId == other._conversationId &&
      id == other.id &&
      _message == other._message;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Conversation {");
    buffer.write("chapterId=" + "$_chapterId" + ", ");
    buffer.write("characterId=" + "$_characterId" + ", ");
    buffer.write("conversationId=" + "$_conversationId" + ", ");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("message=" + "$_message");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Conversation copyWith({String? chapterId, String? characterId, String? conversationId, String? id, String? message}) {
    return Conversation._internal(
      chapterId: chapterId ?? this.chapterId,
      characterId: characterId ?? this.characterId,
      conversationId: conversationId ?? this.conversationId,
      id: id ?? this.id,
      message: message ?? this.message);
  }
  
  Conversation copyWithModelFieldValues({
    ModelFieldValue<String>? chapterId,
    ModelFieldValue<String>? characterId,
    ModelFieldValue<String>? conversationId,
    ModelFieldValue<String>? id,
    ModelFieldValue<String>? message
  }) {
    return Conversation._internal(
      chapterId: chapterId == null ? this.chapterId : chapterId.value,
      characterId: characterId == null ? this.characterId : characterId.value,
      conversationId: conversationId == null ? this.conversationId : conversationId.value,
      id: id == null ? this.id : id.value,
      message: message == null ? this.message : message.value
    );
  }
  
  Conversation.fromJson(Map<String, dynamic> json)  
    : _chapterId = json['chapterId'],
      _characterId = json['characterId'],
      _conversationId = json['conversationId'],
      id = json['id'],
      _message = json['message'];
  
  Map<String, dynamic> toJson() => {
    'chapterId': _chapterId, 'characterId': _characterId, 'conversationId': _conversationId, 'id': id, 'message': _message
  };
  
  Map<String, Object?> toMap() => {
    'chapterId': _chapterId,
    'characterId': _characterId,
    'conversationId': _conversationId,
    'id': id,
    'message': _message
  };

  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Conversation";
    modelSchemaDefinition.pluralName = "Conversations";
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'chapterId',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'characterId',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'conversationId',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'id',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'message',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
  });
}