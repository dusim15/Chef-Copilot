import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class RecipeListRecord extends FirestoreRecord {
  RecipeListRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "instructions" field.
  List<String>? _instructions;
  List<String> get instructions => _instructions ?? const [];
  bool hasInstructions() => _instructions != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "timeAllocated" field.
  DateTime? _timeAllocated;
  DateTime? get timeAllocated => _timeAllocated;
  bool hasTimeAllocated() => _timeAllocated != null;

  // "typeOfMeal" field.
  String? _typeOfMeal;
  String get typeOfMeal => _typeOfMeal ?? '';
  bool hasTypeOfMeal() => _typeOfMeal != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  void _initializeFields() {
    _instructions = getDataList(snapshotData['instructions']);
    _name = snapshotData['name'] as String?;
    _timeAllocated = snapshotData['timeAllocated'] as DateTime?;
    _typeOfMeal = snapshotData['typeOfMeal'] as String?;
    _imageUrl = snapshotData['image_url'] as String?;
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
  DateTime? timeAllocated,
  String? typeOfMeal,
  String? imageUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'timeAllocated': timeAllocated,
      'typeOfMeal': typeOfMeal,
      'image_url': imageUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecipeListRecordDocumentEquality implements Equality<RecipeListRecord> {
  const RecipeListRecordDocumentEquality();

  @override
  bool equals(RecipeListRecord? e1, RecipeListRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.instructions, e2?.instructions) &&
        e1?.name == e2?.name &&
        e1?.timeAllocated == e2?.timeAllocated &&
        e1?.typeOfMeal == e2?.typeOfMeal &&
        e1?.imageUrl == e2?.imageUrl;
  }

  @override
  int hash(RecipeListRecord? e) => const ListEquality().hash(
      [e?.instructions, e?.name, e?.timeAllocated, e?.typeOfMeal, e?.imageUrl]);

  @override
  bool isValidKey(Object? o) => o is RecipeListRecord;
}
