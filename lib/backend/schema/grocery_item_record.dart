import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GroceryItemRecord extends FirestoreRecord {
  GroceryItemRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "user_link" field.
  DocumentReference? _userLink;
  DocumentReference? get userLink => _userLink;
  bool hasUserLink() => _userLink != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _quantity = castToType<int>(snapshotData['quantity']);
    _photoUrl = snapshotData['photo_url'] as String?;
    _userLink = snapshotData['user_link'] as DocumentReference?;
    _category = snapshotData['category'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('groceryItem');

  static Stream<GroceryItemRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GroceryItemRecord.fromSnapshot(s));

  static Future<GroceryItemRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GroceryItemRecord.fromSnapshot(s));

  static GroceryItemRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GroceryItemRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GroceryItemRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GroceryItemRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GroceryItemRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GroceryItemRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGroceryItemRecordData({
  String? name,
  double? price,
  DateTime? createdAt,
  int? quantity,
  String? photoUrl,
  DocumentReference? userLink,
  String? category,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'price': price,
      'created_at': createdAt,
      'quantity': quantity,
      'photo_url': photoUrl,
      'user_link': userLink,
      'category': category,
    }.withoutNulls,
  );

  return firestoreData;
}

class GroceryItemRecordDocumentEquality implements Equality<GroceryItemRecord> {
  const GroceryItemRecordDocumentEquality();

  @override
  bool equals(GroceryItemRecord? e1, GroceryItemRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        e1?.createdAt == e2?.createdAt &&
        e1?.quantity == e2?.quantity &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.userLink == e2?.userLink &&
        e1?.category == e2?.category;
  }

  @override
  int hash(GroceryItemRecord? e) => const ListEquality().hash([
        e?.name,
        e?.price,
        e?.createdAt,
        e?.quantity,
        e?.photoUrl,
        e?.userLink,
        e?.category
      ]);

  @override
  bool isValidKey(Object? o) => o is GroceryItemRecord;
}
