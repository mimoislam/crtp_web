import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CasesRecord extends FirestoreRecord {
  CasesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "adminAccepted" field.
  bool? _adminAccepted;
  bool get adminAccepted => _adminAccepted ?? false;
  bool hasAdminAccepted() => _adminAccepted != null;

  // "adminSeen" field.
  bool? _adminSeen;
  bool get adminSeen => _adminSeen ?? false;
  bool hasAdminSeen() => _adminSeen != null;

  // "caseAddress" field.
  String? _caseAddress;
  String get caseAddress => _caseAddress ?? '';
  bool hasCaseAddress() => _caseAddress != null;

  // "caseId" field.
  String? _caseId;
  String get caseId => _caseId ?? '';
  bool hasCaseId() => _caseId != null;

  // "caseType" field.
  String? _caseType;
  String get caseType => _caseType ?? '';
  bool hasCaseType() => _caseType != null;

  // "declaration" field.
  bool? _declaration;
  bool get declaration => _declaration ?? false;
  bool hasDeclaration() => _declaration != null;

  // "dossierAdmin" field.
  bool? _dossierAdmin;
  bool get dossierAdmin => _dossierAdmin ?? false;
  bool hasDossierAdmin() => _dossierAdmin != null;

  // "dossierAdminId" field.
  String? _dossierAdminId;
  String get dossierAdminId => _dossierAdminId ?? '';
  bool hasDossierAdminId() => _dossierAdminId != null;

  // "dossierTech" field.
  bool? _dossierTech;
  bool get dossierTech => _dossierTech ?? false;
  bool hasDossierTech() => _dossierTech != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "caseDate" field.
  String? _caseDate;
  String get caseDate => _caseDate ?? '';
  bool hasCaseDate() => _caseDate != null;

  // "adminSeenDate" field.
  String? _adminSeenDate;
  String get adminSeenDate => _adminSeenDate ?? '';
  bool hasAdminSeenDate() => _adminSeenDate != null;

  // "adminAcceptedDate" field.
  String? _adminAcceptedDate;
  String get adminAcceptedDate => _adminAcceptedDate ?? '';
  bool hasAdminAcceptedDate() => _adminAcceptedDate != null;

  void _initializeFields() {
    _adminAccepted = snapshotData['adminAccepted'] as bool?;
    _adminSeen = snapshotData['adminSeen'] as bool?;
    _caseAddress = snapshotData['caseAddress'] as String?;
    _caseId = snapshotData['caseId'] as String?;
    _caseType = snapshotData['caseType'] as String?;
    _declaration = snapshotData['declaration'] as bool?;
    _dossierAdmin = snapshotData['dossierAdmin'] as bool?;
    _dossierAdminId = snapshotData['dossierAdminId'] as String?;
    _dossierTech = snapshotData['dossierTech'] as bool?;
    _userId = snapshotData['userId'] as String?;
    _userName = snapshotData['userName'] as String?;
    _caseDate = snapshotData['caseDate'] as String?;
    _adminSeenDate = snapshotData['adminSeenDate'] as String?;
    _adminAcceptedDate = snapshotData['adminAcceptedDate'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CASES');

  static Stream<CasesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CasesRecord.fromSnapshot(s));

  static Future<CasesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CasesRecord.fromSnapshot(s));

  static CasesRecord fromSnapshot(DocumentSnapshot snapshot) => CasesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CasesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CasesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CasesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CasesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCasesRecordData({
  bool? adminAccepted,
  bool? adminSeen,
  String? caseAddress,
  String? caseId,
  String? caseType,
  bool? declaration,
  bool? dossierAdmin,
  String? dossierAdminId,
  bool? dossierTech,
  String? userId,
  String? userName,
  String? caseDate,
  String? adminSeenDate,
  String? adminAcceptedDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'adminAccepted': adminAccepted,
      'adminSeen': adminSeen,
      'caseAddress': caseAddress,
      'caseId': caseId,
      'caseType': caseType,
      'declaration': declaration,
      'dossierAdmin': dossierAdmin,
      'dossierAdminId': dossierAdminId,
      'dossierTech': dossierTech,
      'userId': userId,
      'userName': userName,
      'caseDate': caseDate,
      'adminSeenDate': adminSeenDate,
      'adminAcceptedDate': adminAcceptedDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class CasesRecordDocumentEquality implements Equality<CasesRecord> {
  const CasesRecordDocumentEquality();

  @override
  bool equals(CasesRecord? e1, CasesRecord? e2) {
    return e1?.adminAccepted == e2?.adminAccepted &&
        e1?.adminSeen == e2?.adminSeen &&
        e1?.caseAddress == e2?.caseAddress &&
        e1?.caseId == e2?.caseId &&
        e1?.caseType == e2?.caseType &&
        e1?.declaration == e2?.declaration &&
        e1?.dossierAdmin == e2?.dossierAdmin &&
        e1?.dossierAdminId == e2?.dossierAdminId &&
        e1?.dossierTech == e2?.dossierTech &&
        e1?.userId == e2?.userId &&
        e1?.userName == e2?.userName &&
        e1?.caseDate == e2?.caseDate &&
        e1?.adminSeenDate == e2?.adminSeenDate &&
        e1?.adminAcceptedDate == e2?.adminAcceptedDate;
  }

  @override
  int hash(CasesRecord? e) => const ListEquality().hash([
        e?.adminAccepted,
        e?.adminSeen,
        e?.caseAddress,
        e?.caseId,
        e?.caseType,
        e?.declaration,
        e?.dossierAdmin,
        e?.dossierAdminId,
        e?.dossierTech,
        e?.userId,
        e?.userName,
        e?.caseDate,
        e?.adminSeenDate,
        e?.adminAcceptedDate
      ]);

  @override
  bool isValidKey(Object? o) => o is CasesRecord;
}
