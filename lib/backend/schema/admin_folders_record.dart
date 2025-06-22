import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdminFoldersRecord extends FirestoreRecord {
  AdminFoldersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "caseId" field.
  String? _caseId;
  String get caseId => _caseId ?? '';
  bool hasCaseId() => _caseId != null;

  // "dossierApproved" field.
  bool? _dossierApproved;
  bool get dossierApproved => _dossierApproved ?? false;
  bool hasDossierApproved() => _dossierApproved != null;

  // "dossierFiles" field.
  List<String>? _dossierFiles;
  List<String> get dossierFiles => _dossierFiles ?? const [];
  bool hasDossierFiles() => _dossierFiles != null;

  // "dossierId" field.
  String? _dossierId;
  String get dossierId => _dossierId ?? '';
  bool hasDossierId() => _dossierId != null;

  // "dossierUploaded" field.
  List<bool>? _dossierUploaded;
  List<bool> get dossierUploaded => _dossierUploaded ?? const [];
  bool hasDossierUploaded() => _dossierUploaded != null;

  // "userUid" field.
  String? _userUid;
  String get userUid => _userUid ?? '';
  bool hasUserUid() => _userUid != null;

  void _initializeFields() {
    _caseId = snapshotData['caseId'] as String?;
    _dossierApproved = snapshotData['dossierApproved'] as bool?;
    _dossierFiles = getDataList(snapshotData['dossierFiles']);
    _dossierId = snapshotData['dossierId'] as String?;
    _dossierUploaded = getDataList(snapshotData['dossierUploaded']);
    _userUid = snapshotData['userUid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ADMIN_FOLDERS');

  static Stream<AdminFoldersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdminFoldersRecord.fromSnapshot(s));

  static Future<AdminFoldersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdminFoldersRecord.fromSnapshot(s));

  static AdminFoldersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AdminFoldersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdminFoldersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdminFoldersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdminFoldersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdminFoldersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdminFoldersRecordData({
  String? caseId,
  bool? dossierApproved,
  String? dossierId,
  String? userUid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'caseId': caseId,
      'dossierApproved': dossierApproved,
      'dossierId': dossierId,
      'userUid': userUid,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdminFoldersRecordDocumentEquality
    implements Equality<AdminFoldersRecord> {
  const AdminFoldersRecordDocumentEquality();

  @override
  bool equals(AdminFoldersRecord? e1, AdminFoldersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.caseId == e2?.caseId &&
        e1?.dossierApproved == e2?.dossierApproved &&
        listEquality.equals(e1?.dossierFiles, e2?.dossierFiles) &&
        e1?.dossierId == e2?.dossierId &&
        listEquality.equals(e1?.dossierUploaded, e2?.dossierUploaded) &&
        e1?.userUid == e2?.userUid;
  }

  @override
  int hash(AdminFoldersRecord? e) => const ListEquality().hash([
        e?.caseId,
        e?.dossierApproved,
        e?.dossierFiles,
        e?.dossierId,
        e?.dossierUploaded,
        e?.userUid
      ]);

  @override
  bool isValidKey(Object? o) => o is AdminFoldersRecord;
}
