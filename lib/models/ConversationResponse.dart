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


/** This is an auto generated class representing the ConversationResponse type in your schema. */
class ConversationResponse {
  final String? _chapterId;
  final String? _characterId;
  final CONVERSATIONTYPE? _conversationType;
  final bool? _firstConversation;
  final bool? _hasOptions;
  final String id;
  final String? _imageUrl;
  final String? _message;
  final String? _puzzleId;
  final String? _relicId;

  String? get chapterId {
    return _chapterId;
  }

  String? get characterId {
    return _characterId;
  }

  CONVERSATIONTYPE get conversationType {
    try {
      return _conversationType!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }

  bool? get firstConversation {
    return _firstConversation;
  }

  bool? get hasOptions {
    return _hasOptions;
  }

  String? get imageUrl {
    return _imageUrl;
  }

  String? get message {
    return _message;
  }

  String? get puzzleId {
    return _puzzleId;
  }

  String? get relicId {
    return _relicId;
  }

  const ConversationResponse._internal({chapterId, characterId, required conversationType, firstConversation, hasOptions, required this.id, imageUrl, message, puzzleId, relicId}): _chapterId = chapterId, _characterId = characterId, _conversationType = conversationType, _firstConversation = firstConversation, _hasOptions = hasOptions, _imageUrl = imageUrl, _message = message, _puzzleId = puzzleId, _relicId = relicId;

  factory ConversationResponse({String? chapterId, String? characterId, required CONVERSATIONTYPE conversationType, bool? firstConversation, bool? hasOptions, String? id, String? imageUrl, String? message, String? puzzleId, String? relicId}) {
    return ConversationResponse._internal(
      chapterId: chapterId,
      characterId: characterId,
      conversationType: conversationType,
      firstConversation: firstConversation,
      hasOptions: hasOptions,
      id: id == null ? amplify_core.UUID.getUUID() : id,
      imageUrl: imageUrl,
      message: message,
      puzzleId: puzzleId,
      relicId: relicId);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConversationResponse &&
      _chapterId == other._chapterId &&
      _characterId == other._characterId &&
      _conversationType == other._conversationType &&
      _firstConversation == other._firstConversation &&
      _hasOptions == other._hasOptions &&
      id == other.id &&
      _imageUrl == other._imageUrl &&
      _message == other._message &&
      _puzzleId == other._puzzleId &&
      _relicId == other._relicId;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("ConversationResponse {");
    buffer.write("chapterId=" + "$_chapterId" + ", ");
    buffer.write("characterId=" + "$_characterId" + ", ");
    buffer.write("conversationType=" + (_conversationType != null ? amplify_core.enumToString(_conversationType)! : "null") + ", ");
    buffer.write("firstConversation=" + (_firstConversation != null ? _firstConversation!.toString() : "null") + ", ");
    buffer.write("hasOptions=" + (_hasOptions != null ? _hasOptions!.toString() : "null") + ", ");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("imageUrl=" + "$_imageUrl" + ", ");
    buffer.write("message=" + "$_message" + ", ");
    buffer.write("puzzleId=" + "$_puzzleId" + ", ");
    buffer.write("relicId=" + "$_relicId");
    buffer.write("}");

    return buffer.toString();
  }

  ConversationResponse copyWith({String? chapterId, String? characterId, CONVERSATIONTYPE? conversationType, bool? firstConversation, bool? hasOptions, String? id, String? imageUrl, String? message, String? puzzleId, String? relicId}) {
    return ConversationResponse._internal(
      chapterId: chapterId ?? this.chapterId,
      characterId: characterId ?? this.characterId,
      conversationType: conversationType ?? this.conversationType,
      firstConversation: firstConversation ?? this.firstConversation,
      hasOptions: hasOptions ?? this.hasOptions,
      id: id ?? this.id,
      imageUrl: imageUrl ?? this.imageUrl,
      message: message ?? this.message,
      puzzleId: puzzleId ?? this.puzzleId,
      relicId: relicId ?? this.relicId);
  }

  ConversationResponse copyWithModelFieldValues({
    ModelFieldValue<String?>? chapterId,
    ModelFieldValue<String?>? characterId,
    ModelFieldValue<CONVERSATIONTYPE>? conversationType,
    ModelFieldValue<bool?>? firstConversation,
    ModelFieldValue<bool?>? hasOptions,
    ModelFieldValue<String>? id,
    ModelFieldValue<String?>? imageUrl,
    ModelFieldValue<String?>? message,
    ModelFieldValue<String?>? puzzleId,
    ModelFieldValue<String?>? relicId
  }) {
    return ConversationResponse._internal(
      chapterId: chapterId == null ? this.chapterId : chapterId.value,
      characterId: characterId == null ? this.characterId : characterId.value,
      conversationType: conversationType == null ? this.conversationType : conversationType.value,
      firstConversation: firstConversation == null ? this.firstConversation : firstConversation.value,
      hasOptions: hasOptions == null ? this.hasOptions : hasOptions.value,
      id: id == null ? this.id : id.value,
      imageUrl: imageUrl == null ? this.imageUrl : imageUrl.value,
      message: message == null ? this.message : message.value,
      puzzleId: puzzleId == null ? this.puzzleId : puzzleId.value,
      relicId: relicId == null ? this.relicId : relicId.value
    );
  }

  ConversationResponse.fromJson(Map<String, dynamic> json)
    : _chapterId = json['chapterId'],
      _characterId = json['characterId'],
      _conversationType = amplify_core.enumFromString<CONVERSATIONTYPE>(json['conversationType'], CONVERSATIONTYPE.values),
      _firstConversation = json['firstConversation'],
      _hasOptions = json['hasOptions'],
      id = json['id'],
      _imageUrl = json['imageUrl'],
      _message = json['message'],
      _puzzleId = json['puzzleId'],
      _relicId = json['relicId'];

  Map<String, dynamic> toJson() => {
    'chapterId': _chapterId, 'characterId': _characterId, 'conversationType': amplify_core.enumToString(_conversationType), 'firstConversation': _firstConversation, 'hasOptions': _hasOptions, 'id': id, 'imageUrl': _imageUrl, 'message': _message, 'puzzleId': _puzzleId, 'relicId': _relicId
  };

  Map<String, Object?> toMap() => {
    'chapterId': _chapterId,
    'characterId': _characterId,
    'conversationType': _conversationType,
    'firstConversation': _firstConversation,
    'hasOptions': _hasOptions,
    'id': id,
    'imageUrl': _imageUrl,
    'message': _message,
    'puzzleId': _puzzleId,
    'relicId': _relicId
  };

  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ConversationResponse";
    modelSchemaDefinition.pluralName = "ConversationResponses";

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'chapterId',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'characterId',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'conversationType',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'firstConversation',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'hasOptions',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'id',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'imageUrl',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'message',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'puzzleId',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'relicId',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
  });
}