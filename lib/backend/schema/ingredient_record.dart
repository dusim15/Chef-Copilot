import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IngredientRecord extends FirestoreRecord {
  IngredientRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "quantity" field.
  double? _quantity;
  double get quantity => _quantity ?? 0.0;
  bool hasQuantity() => _quantity != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _quantity = castToType<double>(snapshotData['quantity']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('ingredient')
          : FirebaseFirestore.instance.collectionGroup('ingredient');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('ingredient').doc();

  static Stream<IngredientRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IngredientRecord.fromSnapshot(s));

  static Future<IngredientRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IngredientRecord.fromSnapshot(s));

  static IngredientRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IngredientRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IngredientRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IngredientRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IngredientRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IngredientRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIngredientRecordData({
  String? name,
  double? quantity,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'quantity': quantity,
    }.withoutNulls,
  );

  return firestoreData;
}

class IngredientRecordDocumentEquality implements Equality<IngredientRecord> {
  const IngredientRecordDocumentEquality();

  @override
  bool equals(IngredientRecord? e1, IngredientRecord? e2) {
    return e1?.name == e2?.name && e1?.quantity == e2?.quantity;
  }

  @override
  int hash(IngredientRecord? e) =>
      const ListEquality().hash([e?.name, e?.quantity]);

  @override
  bool isValidKey(Object? o) => o is IngredientRecord;
}
