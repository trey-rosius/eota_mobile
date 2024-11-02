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


/** This is an auto generated class representing the Option type in your schema. */
class Option {
  final String? _conversationId;
  final String id;
  final String? _nextConversationId;
  final CONVERSATIONTYPE? _nextStepType;
  final String? _optionId;
  final String? _optionText;
  final String? _puzzleId;
  final String? _relicId;

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
  
  String get nextConversationId {
    try {
      return _nextConversationId!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }

  CONVERSATIONTYPE get nextStepType {
    try {
      return _nextStepType!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get optionId {
    try {
      return _optionId!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get optionText {
    try {
      return _optionText!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get puzzleId {
    return _puzzleId;
  }
  
  String? get relicId {
    return _relicId;
  }
  
  const Option._internal({required conversationId, required this.id, required nextConversationId, required nextStepType, required optionId, required optionText, puzzleId, relicId}): _conversationId = conversationId, _nextConversationId = nextConversationId, _nextStepType = nextStepType, _optionId = optionId, _optionText = optionText, _puzzleId = puzzleId, _relicId = relicId;
  
  factory Option({required String conversationId, String? id, required String nextConversationId, required CONVERSATIONTYPE nextStepType, required String optionId, required String optionText, String? puzzleId, String? relicId}) {
    return Option._internal(
      conversationId: conversationId,
      id: id == null ? amplify_core.UUID.getUUID() : id,
      nextConversationId: nextConversationId,
      nextStepType: nextStepType,
      optionId: optionId,
      optionText: optionText,
      puzzleId: puzzleId,
      relicId: relicId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Option &&
      _conversationId == other._conversationId &&
      id == other.id &&
      _nextConversationId == other._nextConversationId &&
      _nextStepType == other._nextStepType &&
      _optionId == other._optionId &&
      _optionText == other._optionText &&
      _puzzleId == other._puzzleId &&
      _relicId == other._relicId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Option {");
    buffer.write("conversationId=" + "$_conversationId" + ", ");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("nextConversationId=" + "$_nextConversationId" + ", ");
    buffer.write("nextStepType=" + (_nextStepType != null ? amplify_core.enumToString(_nextStepType)! : "null") + ", ");
    buffer.write("optionId=" + "$_optionId" + ", ");
    buffer.write("optionText=" + "$_optionText" + ", ");
    buffer.write("puzzleId=" + "$_puzzleId" + ", ");
    buffer.write("relicId=" + "$_relicId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Option copyWith({String? conversationId, String? id, String? nextConversationId, CONVERSATIONTYPE? nextStepType, String? optionId, String? optionText, String? puzzleId, String? relicId}) {
    return Option._internal(
      conversationId: conversationId ?? this.conversationId,
      id: id ?? this.id,
      nextConversationId: nextConversationId ?? this.nextConversationId,
      nextStepType: nextStepType ?? this.nextStepType,
      optionId: optionId ?? this.optionId,
      optionText: optionText ?? this.optionText,
      puzzleId: puzzleId ?? this.puzzleId,
      relicId: relicId ?? this.relicId);
  }
  
  Option copyWithModelFieldValues({
    ModelFieldValue<String>? conversationId,
    ModelFieldValue<String>? id,
    ModelFieldValue<String>? nextConversationId,
    ModelFieldValue<CONVERSATIONTYPE>? nextStepType,
    ModelFieldValue<String>? optionId,
    ModelFieldValue<String>? optionText,
    ModelFieldValue<String?>? puzzleId,
    ModelFieldValue<String?>? relicId
  }) {
    return Option._internal(
      conversationId: conversationId == null ? this.conversationId : conversationId.value,
      id: id == null ? this.id : id.value,
      nextConversationId: nextConversationId == null ? this.nextConversationId : nextConversationId.value,
      nextStepType: nextStepType == null ? this.nextStepType : nextStepType.value,
      optionId: optionId == null ? this.optionId : optionId.value,
      optionText: optionText == null ? this.optionText : optionText.value,
      puzzleId: puzzleId == null ? this.puzzleId : puzzleId.value,
      relicId: relicId == null ? this.relicId : relicId.value
    );
  }
  
  Option.fromJson(Map<String, dynamic> json)  
    : _conversationId = json['conversationId'],
      id = json['id'],
      _nextConversationId = json['nextConversationId'],
      _nextStepType = amplify_core.enumFromString<CONVERSATIONTYPE>(json['nextStepType'], CONVERSATIONTYPE.values),
      _optionId = json['optionId'],
      _optionText = json['optionText'],
      _puzzleId = json['puzzleId'],
      _relicId = json['relicId'];
  
  Map<String, dynamic> toJson() => {
    'conversationId': _conversationId, 'id': id, 'nextConversationId': _nextConversationId, 'nextStepType': amplify_core.enumToString(_nextStepType), 'optionId': _optionId, 'optionText': _optionText, 'puzzleId': _puzzleId, 'relicId': _relicId
  };
  
  Map<String, Object?> toMap() => {
    'conversationId': _conversationId,
    'id': id,
    'nextConversationId': _nextConversationId,
    'nextStepType': _nextStepType,
    'optionId': _optionId,
    'optionText': _optionText,
    'puzzleId': _puzzleId,
    'relicId': _relicId
  };

  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Option";
    modelSchemaDefinition.pluralName = "Options";
    
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
      fieldName: 'nextConversationId',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'nextStepType',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'optionId',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'optionText',
      isRequired: true,
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