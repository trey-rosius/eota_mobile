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


/** This is an auto generated class representing the Character type in your schema. */
class Character {
  final int? _baseHealth;
  final int? _baseMana;
  final String? _characterBackstory;
  final String? _characterName;
  final List<Conversation>? _conversation;
  final String id;
  final CHARACTER_ROLE? _role;

  int? get baseHealth {
    return _baseHealth;
  }
  
  int? get baseMana {
    return _baseMana;
  }
  
  String get characterBackstory {
    try {
      return _characterBackstory!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get characterName {
    try {
      return _characterName!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<Conversation>? get conversation {
    return _conversation;
  }
  
  CHARACTER_ROLE get role {
    try {
      return _role!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const Character._internal({baseHealth, baseMana, required characterBackstory, required characterName, conversation, required this.id, required role}): _baseHealth = baseHealth, _baseMana = baseMana, _characterBackstory = characterBackstory, _characterName = characterName, _conversation = conversation, _role = role;
  
  factory Character({int? baseHealth, int? baseMana, required String characterBackstory, required String characterName, List<Conversation>? conversation, String? id, required CHARACTER_ROLE role}) {
    return Character._internal(
      baseHealth: baseHealth,
      baseMana: baseMana,
      characterBackstory: characterBackstory,
      characterName: characterName,
      conversation: conversation != null ? List<Conversation>.unmodifiable(conversation) : conversation,
      id: id == null ? amplify_core.UUID.getUUID() : id,
      role: role);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Character &&
      _baseHealth == other._baseHealth &&
      _baseMana == other._baseMana &&
      _characterBackstory == other._characterBackstory &&
      _characterName == other._characterName &&
      DeepCollectionEquality().equals(_conversation, other._conversation) &&
      id == other.id &&
      _role == other._role;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Character {");
    buffer.write("baseHealth=" + (_baseHealth != null ? _baseHealth!.toString() : "null") + ", ");
    buffer.write("baseMana=" + (_baseMana != null ? _baseMana!.toString() : "null") + ", ");
    buffer.write("characterBackstory=" + "$_characterBackstory" + ", ");
    buffer.write("characterName=" + "$_characterName" + ", ");
    buffer.write("conversation=" + (_conversation != null ? _conversation!.toString() : "null") + ", ");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("role=" + (_role != null ? amplify_core.enumToString(_role)! : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Character copyWith({int? baseHealth, int? baseMana, String? characterBackstory, String? characterName, List<Conversation>? conversation, String? id, CHARACTER_ROLE? role}) {
    return Character._internal(
      baseHealth: baseHealth ?? this.baseHealth,
      baseMana: baseMana ?? this.baseMana,
      characterBackstory: characterBackstory ?? this.characterBackstory,
      characterName: characterName ?? this.characterName,
      conversation: conversation ?? this.conversation,
      id: id ?? this.id,
      role: role ?? this.role);
  }
  
  Character copyWithModelFieldValues({
    ModelFieldValue<int?>? baseHealth,
    ModelFieldValue<int?>? baseMana,
    ModelFieldValue<String>? characterBackstory,
    ModelFieldValue<String>? characterName,
    ModelFieldValue<List<Conversation>>? conversation,
    ModelFieldValue<String>? id,
    ModelFieldValue<CHARACTER_ROLE>? role
  }) {
    return Character._internal(
      baseHealth: baseHealth == null ? this.baseHealth : baseHealth.value,
      baseMana: baseMana == null ? this.baseMana : baseMana.value,
      characterBackstory: characterBackstory == null ? this.characterBackstory : characterBackstory.value,
      characterName: characterName == null ? this.characterName : characterName.value,
      conversation: conversation == null ? this.conversation : conversation.value,
      id: id == null ? this.id : id.value,
      role: role == null ? this.role : role.value
    );
  }
  
  Character.fromJson(Map<String, dynamic> json)  
    : _baseHealth = (json['baseHealth'] as num?)?.toInt(),
      _baseMana = (json['baseMana'] as num?)?.toInt(),
      _characterBackstory = json['characterBackstory'],
      _characterName = json['characterName'],
      _conversation = json['conversation'] is List
        ? (json['conversation'] as List)
          .where((e) => e != null)
          .map((e) => Conversation.fromJson(new Map<String, dynamic>.from(e['serializedData'] ?? e)))
          .toList()
        : null,
      id = json['id'],
      _role = amplify_core.enumFromString<CHARACTER_ROLE>(json['role'], CHARACTER_ROLE.values);
  
  Map<String, dynamic> toJson() => {
    'baseHealth': _baseHealth, 'baseMana': _baseMana, 'characterBackstory': _characterBackstory, 'characterName': _characterName, 'conversation': _conversation?.map((Conversation? e) => e?.toJson()).toList(), 'id': id, 'role': amplify_core.enumToString(_role)
  };
  
  Map<String, Object?> toMap() => {
    'baseHealth': _baseHealth,
    'baseMana': _baseMana,
    'characterBackstory': _characterBackstory,
    'characterName': _characterName,
    'conversation': _conversation,
    'id': id,
    'role': _role
  };

  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Character";
    modelSchemaDefinition.pluralName = "Characters";
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'baseHealth',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'baseMana',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'characterBackstory',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'characterName',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'conversation',
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embeddedCollection, ofCustomTypeName: 'Conversation')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'id',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'role',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
  });
}