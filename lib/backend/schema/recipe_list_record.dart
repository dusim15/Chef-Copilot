import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecipeListRecord extends FirestoreRecord {
  RecipeListRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "typeOfMeal" field.
  String? _typeOfMeal;
  String get typeOfMeal => _typeOfMeal ?? '';
  bool hasTypeOfMeal() => _typeOfMeal != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "recipe" field.
  String? _recipe;
  String get recipe => _recipe ?? '';
  bool hasRecipe() => _recipe != null;

  // "instructions" field.
  String? _instructions;
  String get instructions => _instructions ?? '';
  bool hasInstructions() => _instructions != null;

  // "timeAllocated" field.
  String? _timeAllocated;
  String get timeAllocated => _timeAllocated ?? '';
  bool hasTimeAllocated() => _timeAllocated != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _typeOfMeal = snapshotData['typeOfMeal'] as String?;
    _imageUrl = snapshotData['image_url'] as String?;
    _recipe = snapshotData['recipe'] as String?;
    _instructions = snapshotData['instructions'] as String?;
    _timeAllocated = snapshotData['timeAllocated'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RecipeList');

  static Stream<RecipeListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecipeListRecord.fromSnapshot(s));

  static Future<RecipeListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecipeListRecord.fromSnapshot(s));

  static RecipeListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecipeListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecipeListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecipeListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecipeListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecipeListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecipeListRecordData({
  String? name,
  String? typeOfMeal,
  String? imageUrl,
  String? recipe,
  String? instructions,
  String? timeAllocated,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'typeOfMeal': typeOfMeal,
      'image_url': imageUrl,
      'recipe': recipe,
      'instructions': instructions,
      'timeAllocated': timeAllocated,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecipeListRecordDocumentEquality implements Equality<RecipeListRecord> {
  const RecipeListRecordDocumentEquality();

  @override
  bool equals(RecipeListRecord? e1, RecipeListRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.typeOfMeal == e2?.typeOfMeal &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.recipe == e2?.recipe &&
        e1?.instructions == e2?.instructions &&
        e1?.timeAllocated == e2?.timeAllocated;
  }

  @override
  int hash(RecipeListRecord? e) => const ListEquality().hash([
        e?.name,
        e?.typeOfMeal,
        e?.imageUrl,
        e?.recipe,
        e?.instructions,
        e?.timeAllocated
      ]);

  @override
  bool isValidKey(Object? o) => o is RecipeListRecord;
}
