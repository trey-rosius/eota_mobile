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
import 'package:collection/collection.dart';


/** This is an auto generated class representing the Conversation type in your schema. */
class Conversation {
  final String? _chapterId;
  final String? _characterId;
  final String? _conversationId;
  final bool? _firstConversation;
  final bool? _hasOptions;
  final String id;
  final String? _message;
  final List<Option>? _options;

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
  
  bool get firstConversation {
    try {
      return _firstConversation!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  bool get hasOptions {
    try {
      return _hasOptions!;
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
  
  List<Option>? get options {
    return _options;
  }
  
  const Conversation._internal({required chapterId, required characterId, required conversationId, required firstConversation, required hasOptions, required this.id, required message, options}): _chapterId = chapterId, _characterId = characterId, _conversationId = conversationId, _firstConversation = firstConversation, _hasOptions = hasOptions, _message = message, _options = options;
  
  factory Conversation({required String chapterId, required String characterId, required String conversationId, required bool firstConversation, required bool hasOptions, String? id, required String message, List<Option>? options}) {
    return Conversation._internal(
      chapterId: chapterId,
      characterId: characterId,
      conversationId: conversationId,
      firstConversation: firstConversation,
      hasOptions: hasOptions,
      id: id == null ? amplify_core.UUID.getUUID() : id,
      message: message,
      options: options != null ? List<Option>.unmodifiable(options) : options);
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
      _firstConversation == other._firstConversation &&
      _hasOptions == other._hasOptions &&
      id == other.id &&
      _message == other._message &&
      DeepCollectionEquality().equals(_options, other._options);
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
    buffer.write("firstConversation=" + (_firstConversation != null ? _firstConversation!.toString() : "null") + ", ");
    buffer.write("hasOptions=" + (_hasOptions != null ? _hasOptions!.toString() : "null") + ", ");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("message=" + "$_message" + ", ");
    buffer.write("options=" + (_options != null ? _options!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Conversation copyWith({String? chapterId, String? characterId, String? conversationId, bool? firstConversation, bool? hasOptions, String? id, String? message, List<Option>? options}) {
    return Conversation._internal(
      chapterId: chapterId ?? this.chapterId,
      characterId: characterId ?? this.characterId,
      conversationId: conversationId ?? this.conversationId,
      firstConversation: firstConversation ?? this.firstConversation,
      hasOptions: hasOptions ?? this.hasOptions,
      id: id ?? this.id,
      message: message ?? this.message,
      options: options ?? this.options);
  }
  
  Conversation copyWithModelFieldValues({
    ModelFieldValue<String>? chapterId,
    ModelFieldValue<String>? characterId,
    ModelFieldValue<String>? conversationId,
    ModelFieldValue<bool>? firstConversation,
    ModelFieldValue<bool>? hasOptions,
    ModelFieldValue<String>? id,
    ModelFieldValue<String>? message,
    ModelFieldValue<List<Option>>? options
  }) {
    return Conversation._internal(
      chapterId: chapterId == null ? this.chapterId : chapterId.value,
      characterId: characterId == null ? this.characterId : characterId.value,
      conversationId: conversationId == null ? this.conversationId : conversationId.value,
      firstConversation: firstConversation == null ? this.firstConversation : firstConversation.value,
      hasOptions: hasOptions == null ? this.hasOptions : hasOptions.value,
      id: id == null ? this.id : id.value,
      message: message == null ? this.message : message.value,
      options: options == null ? this.options : options.value
    );
  }
  
  Conversation.fromJson(Map<String, dynamic> json)  
    : _chapterId = json['chapterId'],
      _characterId = json['characterId'],
      _conversationId = json['conversationId'],
      _firstConversation = json['firstConversation'],
      _hasOptions = json['hasOptions'],
      id = json['id'],
      _message = json['message'],
      _options = json['options'] is List
        ? (json['options'] as List)
          .where((e) => e != null)
          .map((e) => Option.fromJson(new Map<String, dynamic>.from(e['serializedData'] ?? e)))
          .toList()
        : null;
  
  Map<String, dynamic> toJson() => {
    'chapterId': _chapterId, 'characterId': _characterId, 'conversationId': _conversationId, 'firstConversation': _firstConversation, 'hasOptions': _hasOptions, 'id': id, 'message': _message, 'options': _options?.map((Option? e) => e?.toJson()).toList()
  };
  
  Map<String, Object?> toMap() => {
    'chapterId': _chapterId,
    'characterId': _characterId,
    'conversationId': _conversationId,
    'firstConversation': _firstConversation,
    'hasOptions': _hasOptions,
    'id': id,
    'message': _message,
    'options': _options
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
      fieldName: 'firstConversation',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'hasOptions',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
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
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'options',
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embeddedCollection, ofCustomTypeName: 'Option')
    ));
  });
}