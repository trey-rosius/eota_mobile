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


/** This is an auto generated class representing the Relic type in your schema. */
class Relic {
  final String? _chapterId;
  final String? _characterId;
  final String? _description;
  final String id;
  final String? _imageUrl;
  final String? _name;
  final String? _puzzleId;

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
  
  String get description {
    try {
      return _description!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get imageUrl {
    try {
      return _imageUrl!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get name {
    try {
      return _name!;
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
  
  const Relic._internal({required chapterId, required characterId, required description, required this.id, required imageUrl, required name, required puzzleId}): _chapterId = chapterId, _characterId = characterId, _description = description, _imageUrl = imageUrl, _name = name, _puzzleId = puzzleId;
  
  factory Relic({required String chapterId, required String characterId, required String description, String? id, required String imageUrl, required String name, required String puzzleId}) {
    return Relic._internal(
      chapterId: chapterId,
      characterId: characterId,
      description: description,
      id: id == null ? amplify_core.UUID.getUUID() : id,
      imageUrl: imageUrl,
      name: name,
      puzzleId: puzzleId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Relic &&
      _chapterId == other._chapterId &&
      _characterId == other._characterId &&
      _description == other._description &&
      id == other.id &&
      _imageUrl == other._imageUrl &&
      _name == other._name &&
      _puzzleId == other._puzzleId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Relic {");
    buffer.write("chapterId=" + "$_chapterId" + ", ");
    buffer.write("characterId=" + "$_characterId" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("imageUrl=" + "$_imageUrl" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("puzzleId=" + "$_puzzleId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Relic copyWith({String? chapterId, String? characterId, String? description, String? id, String? imageUrl, String? name, String? puzzleId}) {
    return Relic._internal(
      chapterId: chapterId ?? this.chapterId,
      characterId: characterId ?? this.characterId,
      description: description ?? this.description,
      id: id ?? this.id,
      imageUrl: imageUrl ?? this.imageUrl,
      name: name ?? this.name,
      puzzleId: puzzleId ?? this.puzzleId);
  }
  
  Relic copyWithModelFieldValues({
    ModelFieldValue<String>? chapterId,
    ModelFieldValue<String>? characterId,
    ModelFieldValue<String>? description,
    ModelFieldValue<String>? id,
    ModelFieldValue<String>? imageUrl,
    ModelFieldValue<String>? name,
    ModelFieldValue<String>? puzzleId
  }) {
    return Relic._internal(
      chapterId: chapterId == null ? this.chapterId : chapterId.value,
      characterId: characterId == null ? this.characterId : characterId.value,
      description: description == null ? this.description : description.value,
      id: id == null ? this.id : id.value,
      imageUrl: imageUrl == null ? this.imageUrl : imageUrl.value,
      name: name == null ? this.name : name.value,
      puzzleId: puzzleId == null ? this.puzzleId : puzzleId.value
    );
  }
  
  Relic.fromJson(Map<String, dynamic> json)  
    : _chapterId = json['chapterId'],
      _characterId = json['characterId'],
      _description = json['description'],
      id = json['id'],
      _imageUrl = json['imageUrl'],
      _name = json['name'],
      _puzzleId = json['puzzleId'];
  
  Map<String, dynamic> toJson() => {
    'chapterId': _chapterId, 'characterId': _characterId, 'description': _description, 'id': id, 'imageUrl': _imageUrl, 'name': _name, 'puzzleId': _puzzleId
  };
  
  Map<String, Object?> toMap() => {
    'chapterId': _chapterId,
    'characterId': _characterId,
    'description': _description,
    'id': id,
    'imageUrl': _imageUrl,
    'name': _name,
    'puzzleId': _puzzleId
  };

  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Relic";
    modelSchemaDefinition.pluralName = "Relics";
    
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
      fieldName: 'description',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'id',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'imageUrl',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'name',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'puzzleId',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
  });
}