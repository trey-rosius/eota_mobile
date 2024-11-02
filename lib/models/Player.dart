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


/** This is an auto generated class representing the Player type in your schema. */
class Player {
  final List<String>? _completedChapterIds;
  final String? _currentChapterId;
  final String id;
  final List<String>? _solvedPuzzleIds;
  final List<String>? _unlockedCharacterIds;
  final List<String>? _unlockedRelicIds;

  List<String>? get completedChapterIds {
    return _completedChapterIds;
  }
  
  String get currentChapterId {
    try {
      return _currentChapterId!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<String>? get solvedPuzzleIds {
    return _solvedPuzzleIds;
  }
  
  List<String>? get unlockedCharacterIds {
    return _unlockedCharacterIds;
  }
  
  List<String>? get unlockedRelicIds {
    return _unlockedRelicIds;
  }
  
  const Player._internal({completedChapterIds, required currentChapterId, required this.id, solvedPuzzleIds, unlockedCharacterIds, unlockedRelicIds}): _completedChapterIds = completedChapterIds, _currentChapterId = currentChapterId, _solvedPuzzleIds = solvedPuzzleIds, _unlockedCharacterIds = unlockedCharacterIds, _unlockedRelicIds = unlockedRelicIds;
  
  factory Player({List<String>? completedChapterIds, required String currentChapterId, String? id, List<String>? solvedPuzzleIds, List<String>? unlockedCharacterIds, List<String>? unlockedRelicIds}) {
    return Player._internal(
      completedChapterIds: completedChapterIds != null ? List<String>.unmodifiable(completedChapterIds) : completedChapterIds,
      currentChapterId: currentChapterId,
      id: id == null ? amplify_core.UUID.getUUID() : id,
      solvedPuzzleIds: solvedPuzzleIds != null ? List<String>.unmodifiable(solvedPuzzleIds) : solvedPuzzleIds,
      unlockedCharacterIds: unlockedCharacterIds != null ? List<String>.unmodifiable(unlockedCharacterIds) : unlockedCharacterIds,
      unlockedRelicIds: unlockedRelicIds != null ? List<String>.unmodifiable(unlockedRelicIds) : unlockedRelicIds);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Player &&
      DeepCollectionEquality().equals(_completedChapterIds, other._completedChapterIds) &&
      _currentChapterId == other._currentChapterId &&
      id == other.id &&
      DeepCollectionEquality().equals(_solvedPuzzleIds, other._solvedPuzzleIds) &&
      DeepCollectionEquality().equals(_unlockedCharacterIds, other._unlockedCharacterIds) &&
      DeepCollectionEquality().equals(_unlockedRelicIds, other._unlockedRelicIds);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Player {");
    buffer.write("completedChapterIds=" + (_completedChapterIds != null ? _completedChapterIds!.toString() : "null") + ", ");
    buffer.write("currentChapterId=" + "$_currentChapterId" + ", ");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("solvedPuzzleIds=" + (_solvedPuzzleIds != null ? _solvedPuzzleIds!.toString() : "null") + ", ");
    buffer.write("unlockedCharacterIds=" + (_unlockedCharacterIds != null ? _unlockedCharacterIds!.toString() : "null") + ", ");
    buffer.write("unlockedRelicIds=" + (_unlockedRelicIds != null ? _unlockedRelicIds!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Player copyWith({List<String>? completedChapterIds, String? currentChapterId, String? id, List<String>? solvedPuzzleIds, List<String>? unlockedCharacterIds, List<String>? unlockedRelicIds}) {
    return Player._internal(
      completedChapterIds: completedChapterIds ?? this.completedChapterIds,
      currentChapterId: currentChapterId ?? this.currentChapterId,
      id: id ?? this.id,
      solvedPuzzleIds: solvedPuzzleIds ?? this.solvedPuzzleIds,
      unlockedCharacterIds: unlockedCharacterIds ?? this.unlockedCharacterIds,
      unlockedRelicIds: unlockedRelicIds ?? this.unlockedRelicIds);
  }
  
  Player copyWithModelFieldValues({
    ModelFieldValue<List<String>>? completedChapterIds,
    ModelFieldValue<String>? currentChapterId,
    ModelFieldValue<String>? id,
    ModelFieldValue<List<String>>? solvedPuzzleIds,
    ModelFieldValue<List<String>>? unlockedCharacterIds,
    ModelFieldValue<List<String>>? unlockedRelicIds
  }) {
    return Player._internal(
      completedChapterIds: completedChapterIds == null ? this.completedChapterIds : completedChapterIds.value,
      currentChapterId: currentChapterId == null ? this.currentChapterId : currentChapterId.value,
      id: id == null ? this.id : id.value,
      solvedPuzzleIds: solvedPuzzleIds == null ? this.solvedPuzzleIds : solvedPuzzleIds.value,
      unlockedCharacterIds: unlockedCharacterIds == null ? this.unlockedCharacterIds : unlockedCharacterIds.value,
      unlockedRelicIds: unlockedRelicIds == null ? this.unlockedRelicIds : unlockedRelicIds.value
    );
  }
  
  Player.fromJson(Map<String, dynamic> json)  
    : _completedChapterIds = json['completedChapterIds']?.cast<String>(),
      _currentChapterId = json['currentChapterId'],
      id = json['id'],
      _solvedPuzzleIds = json['solvedPuzzleIds']?.cast<String>(),
      _unlockedCharacterIds = json['unlockedCharacterIds']?.cast<String>(),
      _unlockedRelicIds = json['unlockedRelicIds']?.cast<String>();
  
  Map<String, dynamic> toJson() => {
    'completedChapterIds': _completedChapterIds, 'currentChapterId': _currentChapterId, 'id': id, 'solvedPuzzleIds': _solvedPuzzleIds, 'unlockedCharacterIds': _unlockedCharacterIds, 'unlockedRelicIds': _unlockedRelicIds
  };
  
  Map<String, Object?> toMap() => {
    'completedChapterIds': _completedChapterIds,
    'currentChapterId': _currentChapterId,
    'id': id,
    'solvedPuzzleIds': _solvedPuzzleIds,
    'unlockedCharacterIds': _unlockedCharacterIds,
    'unlockedRelicIds': _unlockedRelicIds
  };

  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Player";
    modelSchemaDefinition.pluralName = "Players";
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'completedChapterIds',
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'currentChapterId',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'id',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'solvedPuzzleIds',
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'unlockedCharacterIds',
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'unlockedRelicIds',
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
  });
}