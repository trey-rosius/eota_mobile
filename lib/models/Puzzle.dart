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


/** This is an auto generated class representing the Puzzle type in your schema. */
class Puzzle {
  final String? _chapterId;
  final String? _decryptedMessage;
  final String? _encryptedMessage;
  final String? _hint;
  final String id;
  final String? _puzzleDescription;
  final String? _puzzleId;
  final String? _puzzleName;
  final PUZZLETYPE? _puzzleType;

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
  
  String get decryptedMessage {
    try {
      return _decryptedMessage!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get encryptedMessage {
    try {
      return _encryptedMessage!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get hint {
    try {
      return _hint!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get puzzleDescription {
    try {
      return _puzzleDescription!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get puzzleId {
    try {
      return _puzzleId!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get puzzleName {
    try {
      return _puzzleName!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  PUZZLETYPE get puzzleType {
    try {
      return _puzzleType!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const Puzzle._internal({required chapterId, required decryptedMessage, required encryptedMessage, required hint, required this.id, required puzzleDescription, required puzzleId, required puzzleName, required puzzleType}): _chapterId = chapterId, _decryptedMessage = decryptedMessage, _encryptedMessage = encryptedMessage, _hint = hint, _puzzleDescription = puzzleDescription, _puzzleId = puzzleId, _puzzleName = puzzleName, _puzzleType = puzzleType;
  
  factory Puzzle({required String chapterId, required String decryptedMessage, required String encryptedMessage, required String hint, String? id, required String puzzleDescription, required String puzzleId, required String puzzleName, required PUZZLETYPE puzzleType}) {
    return Puzzle._internal(
      chapterId: chapterId,
      decryptedMessage: decryptedMessage,
      encryptedMessage: encryptedMessage,
      hint: hint,
      id: id == null ? amplify_core.UUID.getUUID() : id,
      puzzleDescription: puzzleDescription,
      puzzleId: puzzleId,
      puzzleName: puzzleName,
      puzzleType: puzzleType);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Puzzle &&
      _chapterId == other._chapterId &&
      _decryptedMessage == other._decryptedMessage &&
      _encryptedMessage == other._encryptedMessage &&
      _hint == other._hint &&
      id == other.id &&
      _puzzleDescription == other._puzzleDescription &&
      _puzzleId == other._puzzleId &&
      _puzzleName == other._puzzleName &&
      _puzzleType == other._puzzleType;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Puzzle {");
    buffer.write("chapterId=" + "$_chapterId" + ", ");
    buffer.write("decryptedMessage=" + "$_decryptedMessage" + ", ");
    buffer.write("encryptedMessage=" + "$_encryptedMessage" + ", ");
    buffer.write("hint=" + "$_hint" + ", ");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("puzzleDescription=" + "$_puzzleDescription" + ", ");
    buffer.write("puzzleId=" + "$_puzzleId" + ", ");
    buffer.write("puzzleName=" + "$_puzzleName" + ", ");
    buffer.write("puzzleType=" + (_puzzleType != null ? amplify_core.enumToString(_puzzleType)! : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Puzzle copyWith({String? chapterId, String? decryptedMessage, String? encryptedMessage, String? hint, String? id, String? puzzleDescription, String? puzzleId, String? puzzleName, PUZZLETYPE? puzzleType}) {
    return Puzzle._internal(
      chapterId: chapterId ?? this.chapterId,
      decryptedMessage: decryptedMessage ?? this.decryptedMessage,
      encryptedMessage: encryptedMessage ?? this.encryptedMessage,
      hint: hint ?? this.hint,
      id: id ?? this.id,
      puzzleDescription: puzzleDescription ?? this.puzzleDescription,
      puzzleId: puzzleId ?? this.puzzleId,
      puzzleName: puzzleName ?? this.puzzleName,
      puzzleType: puzzleType ?? this.puzzleType);
  }
  
  Puzzle copyWithModelFieldValues({
    ModelFieldValue<String>? chapterId,
    ModelFieldValue<String>? decryptedMessage,
    ModelFieldValue<String>? encryptedMessage,
    ModelFieldValue<String>? hint,
    ModelFieldValue<String>? id,
    ModelFieldValue<String>? puzzleDescription,
    ModelFieldValue<String>? puzzleId,
    ModelFieldValue<String>? puzzleName,
    ModelFieldValue<PUZZLETYPE>? puzzleType
  }) {
    return Puzzle._internal(
      chapterId: chapterId == null ? this.chapterId : chapterId.value,
      decryptedMessage: decryptedMessage == null ? this.decryptedMessage : decryptedMessage.value,
      encryptedMessage: encryptedMessage == null ? this.encryptedMessage : encryptedMessage.value,
      hint: hint == null ? this.hint : hint.value,
      id: id == null ? this.id : id.value,
      puzzleDescription: puzzleDescription == null ? this.puzzleDescription : puzzleDescription.value,
      puzzleId: puzzleId == null ? this.puzzleId : puzzleId.value,
      puzzleName: puzzleName == null ? this.puzzleName : puzzleName.value,
      puzzleType: puzzleType == null ? this.puzzleType : puzzleType.value
    );
  }
  
  Puzzle.fromJson(Map<String, dynamic> json)  
    : _chapterId = json['chapterId'],
      _decryptedMessage = json['decryptedMessage'],
      _encryptedMessage = json['encryptedMessage'],
      _hint = json['hint'],
      id = json['id'],
      _puzzleDescription = json['puzzleDescription'],
      _puzzleId = json['puzzleId'],
      _puzzleName = json['puzzleName'],
      _puzzleType = amplify_core.enumFromString<PUZZLETYPE>(json['puzzleType'], PUZZLETYPE.values);
  
  Map<String, dynamic> toJson() => {
    'chapterId': _chapterId, 'decryptedMessage': _decryptedMessage, 'encryptedMessage': _encryptedMessage, 'hint': _hint, 'id': id, 'puzzleDescription': _puzzleDescription, 'puzzleId': _puzzleId, 'puzzleName': _puzzleName, 'puzzleType': amplify_core.enumToString(_puzzleType)
  };
  
  Map<String, Object?> toMap() => {
    'chapterId': _chapterId,
    'decryptedMessage': _decryptedMessage,
    'encryptedMessage': _encryptedMessage,
    'hint': _hint,
    'id': id,
    'puzzleDescription': _puzzleDescription,
    'puzzleId': _puzzleId,
    'puzzleName': _puzzleName,
    'puzzleType': _puzzleType
  };

  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Puzzle";
    modelSchemaDefinition.pluralName = "Puzzles";
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'chapterId',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'decryptedMessage',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'encryptedMessage',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'hint',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'id',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'puzzleDescription',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'puzzleId',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'puzzleName',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'puzzleType',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
  });
}