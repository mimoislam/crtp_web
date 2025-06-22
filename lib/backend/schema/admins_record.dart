import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdminsRecord extends FirestoreRecord {
  AdminsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _password = snapshotData['password'] as String?;
    _role = snapshotData['role'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ADMINS');

  static Stream<AdminsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdminsRecord.fromSnapshot(s));

  static Future<AdminsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdminsRecord.fromSnapshot(s));

  static AdminsRecord fromSnapshot(DocumentSnapshot snapshot) => AdminsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdminsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdminsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdminsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdminsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdminsRecordData({
  String? email,
  String? password,
  String? role,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'password': password,
      'role': role,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdminsRecordDocumentEquality implements Equality<AdminsRecord> {
  const AdminsRecordDocumentEquality();

  @override
  bool equals(AdminsRecord? e1, AdminsRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.password == e2?.password &&
        e1?.role == e2?.role;
  }

  @override
  int hash(AdminsRecord? e) =>
      const ListEquality().hash([e?.email, e?.password, e?.role]);

  @override
  bool isValidKey(Object? o) => o is AdminsRecord;
}
