import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AboutRecord extends FirestoreRecord {
  AboutRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "about" field.
  String? _about;
  String get about => _about ?? '';
  bool hasAbout() => _about != null;

  // "contact" field.
  String? _contact;
  String get contact => _contact ?? '';
  bool hasContact() => _contact != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "general" field.
  String? _general;
  String get general => _general ?? '';
  bool hasGeneral() => _general != null;

  // "terms" field.
  String? _terms;
  String get terms => _terms ?? '';
  bool hasTerms() => _terms != null;

  // "social" field.
  String? _social;
  String get social => _social ?? '';
  bool hasSocial() => _social != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  // "version" field.
  String? _version;
  String get version => _version ?? '';
  bool hasVersion() => _version != null;

  // "app" field.
  String? _app;
  String get app => _app ?? '';
  bool hasApp() => _app != null;

  void _initializeFields() {
    _about = snapshotData['about'] as String?;
    _contact = snapshotData['contact'] as String?;
    _email = snapshotData['email'] as String?;
    _general = snapshotData['general'] as String?;
    _terms = snapshotData['terms'] as String?;
    _social = snapshotData['social'] as String?;
    _url = snapshotData['url'] as String?;
    _version = snapshotData['version'] as String?;
    _app = snapshotData['app'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('about');

  static Stream<AboutRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AboutRecord.fromSnapshot(s));

  static Future<AboutRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AboutRecord.fromSnapshot(s));

  static AboutRecord fromSnapshot(DocumentSnapshot snapshot) => AboutRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AboutRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AboutRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AboutRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AboutRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAboutRecordData({
  String? about,
  String? contact,
  String? email,
  String? general,
  String? terms,
  String? social,
  String? url,
  String? version,
  String? app,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'about': about,
      'contact': contact,
      'email': email,
      'general': general,
      'terms': terms,
      'social': social,
      'url': url,
      'version': version,
      'app': app,
    }.withoutNulls,
  );

  return firestoreData;
}

class AboutRecordDocumentEquality implements Equality<AboutRecord> {
  const AboutRecordDocumentEquality();

  @override
  bool equals(AboutRecord? e1, AboutRecord? e2) {
    return e1?.about == e2?.about &&
        e1?.contact == e2?.contact &&
        e1?.email == e2?.email &&
        e1?.general == e2?.general &&
        e1?.terms == e2?.terms &&
        e1?.social == e2?.social &&
        e1?.url == e2?.url &&
        e1?.version == e2?.version &&
        e1?.app == e2?.app;
  }

  @override
  int hash(AboutRecord? e) => const ListEquality().hash([
        e?.about,
        e?.contact,
        e?.email,
        e?.general,
        e?.terms,
        e?.social,
        e?.url,
        e?.version,
        e?.app
      ]);

  @override
  bool isValidKey(Object? o) => o is AboutRecord;
}
