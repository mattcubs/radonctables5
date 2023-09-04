import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RadonctablesRecord extends FirestoreRecord {
  RadonctablesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "freetext" field.
  String? _freetext;
  String get freetext => _freetext ?? '';
  bool hasFreetext() => _freetext != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "idAlt" field.
  String? _idAlt;
  String get idAlt => _idAlt ?? '';
  bool hasIdAlt() => _idAlt != null;

  // "lastUpdate" field.
  DateTime? _lastUpdate;
  DateTime? get lastUpdate => _lastUpdate;
  bool hasLastUpdate() => _lastUpdate != null;

  // "lastUpdated" field.
  String? _lastUpdated;
  String get lastUpdated => _lastUpdated ?? '';
  bool hasLastUpdated() => _lastUpdated != null;

  // "leadingQuestion" field.
  String? _leadingQuestion;
  String get leadingQuestion => _leadingQuestion ?? '';
  bool hasLeadingQuestion() => _leadingQuestion != null;

  // "theAnswer" field.
  String? _theAnswer;
  String get theAnswer => _theAnswer ?? '';
  bool hasTheAnswer() => _theAnswer != null;

  // "theCitation" field.
  String? _theCitation;
  String get theCitation => _theCitation ?? '';
  bool hasTheCitation() => _theCitation != null;

  // "theColor" field.
  String? _theColor;
  String get theColor => _theColor ?? '';
  bool hasTheColor() => _theColor != null;

  // "theCommentary" field.
  String? _theCommentary;
  String get theCommentary => _theCommentary ?? '';
  bool hasTheCommentary() => _theCommentary != null;

  // "theCommentaryReference" field.
  String? _theCommentaryReference;
  String get theCommentaryReference => _theCommentaryReference ?? '';
  bool hasTheCommentaryReference() => _theCommentaryReference != null;

  // "theFlag" field.
  String? _theFlag;
  String get theFlag => _theFlag ?? '';
  bool hasTheFlag() => _theFlag != null;

  // "theInterpretation" field.
  String? _theInterpretation;
  String get theInterpretation => _theInterpretation ?? '';
  bool hasTheInterpretation() => _theInterpretation != null;

  // "theLabel" field.
  String? _theLabel;
  String get theLabel => _theLabel ?? '';
  bool hasTheLabel() => _theLabel != null;

  // "theLink1" field.
  String? _theLink1;
  String get theLink1 => _theLink1 ?? '';
  bool hasTheLink1() => _theLink1 != null;

  // "theLink10" field.
  String? _theLink10;
  String get theLink10 => _theLink10 ?? '';
  bool hasTheLink10() => _theLink10 != null;

  // "theLink2" field.
  String? _theLink2;
  String get theLink2 => _theLink2 ?? '';
  bool hasTheLink2() => _theLink2 != null;

  // "theLink3" field.
  String? _theLink3;
  String get theLink3 => _theLink3 ?? '';
  bool hasTheLink3() => _theLink3 != null;

  // "theLink4" field.
  String? _theLink4;
  String get theLink4 => _theLink4 ?? '';
  bool hasTheLink4() => _theLink4 != null;

  // "theLink5" field.
  String? _theLink5;
  String get theLink5 => _theLink5 ?? '';
  bool hasTheLink5() => _theLink5 != null;

  // "theLink6" field.
  String? _theLink6;
  String get theLink6 => _theLink6 ?? '';
  bool hasTheLink6() => _theLink6 != null;

  // "theLink7" field.
  String? _theLink7;
  String get theLink7 => _theLink7 ?? '';
  bool hasTheLink7() => _theLink7 != null;

  // "theLink8" field.
  String? _theLink8;
  String get theLink8 => _theLink8 ?? '';
  bool hasTheLink8() => _theLink8 != null;

  // "theLink9" field.
  String? _theLink9;
  String get theLink9 => _theLink9 ?? '';
  bool hasTheLink9() => _theLink9 != null;

  // "theMethods" field.
  String? _theMethods;
  String get theMethods => _theMethods ?? '';
  bool hasTheMethods() => _theMethods != null;

  // "theN" field.
  String? _theN;
  String get theN => _theN ?? '';
  bool hasTheN() => _theN != null;

  // "theNew" field.
  String? _theNew;
  String get theNew => _theNew ?? '';
  bool hasTheNew() => _theNew != null;

  // "thePage" field.
  String? _thePage;
  String get thePage => _thePage ?? '';
  bool hasThePage() => _thePage != null;

  // "thePatients" field.
  String? _thePatients;
  String get thePatients => _thePatients ?? '';
  bool hasThePatients() => _thePatients != null;

  // "theQuestion" field.
  String? _theQuestion;
  String get theQuestion => _theQuestion ?? '';
  bool hasTheQuestion() => _theQuestion != null;

  // "theReference" field.
  String? _theReference;
  String get theReference => _theReference ?? '';
  bool hasTheReference() => _theReference != null;

  // "theResult" field.
  String? _theResult;
  String get theResult => _theResult ?? '';
  bool hasTheResult() => _theResult != null;

  // "theSubtopic" field.
  String? _theSubtopic;
  String get theSubtopic => _theSubtopic ?? '';
  bool hasTheSubtopic() => _theSubtopic != null;

  // "theTopic" field.
  String? _theTopic;
  String get theTopic => _theTopic ?? '';
  bool hasTheTopic() => _theTopic != null;

  // "theTrial" field.
  String? _theTrial;
  String get theTrial => _theTrial ?? '';
  bool hasTheTrial() => _theTrial != null;

  // "twitterHash" field.
  String? _twitterHash;
  String get twitterHash => _twitterHash ?? '';
  bool hasTwitterHash() => _twitterHash != null;

  // "twitterLink" field.
  String? _twitterLink;
  String get twitterLink => _twitterLink ?? '';
  bool hasTwitterLink() => _twitterLink != null;

  // "twitterTag" field.
  String? _twitterTag;
  String get twitterTag => _twitterTag ?? '';
  bool hasTwitterTag() => _twitterTag != null;

  // "uniqueId" field.
  String? _uniqueId;
  String get uniqueId => _uniqueId ?? '';
  bool hasUniqueId() => _uniqueId != null;

  void _initializeFields() {
    _freetext = snapshotData['freetext'] as String?;
    _id = castToType<int>(snapshotData['id']);
    _idAlt = snapshotData['idAlt'] as String?;
    _lastUpdate = snapshotData['lastUpdate'] as DateTime?;
    _lastUpdated = snapshotData['lastUpdated'] as String?;
    _leadingQuestion = snapshotData['leadingQuestion'] as String?;
    _theAnswer = snapshotData['theAnswer'] as String?;
    _theCitation = snapshotData['theCitation'] as String?;
    _theColor = snapshotData['theColor'] as String?;
    _theCommentary = snapshotData['theCommentary'] as String?;
    _theCommentaryReference = snapshotData['theCommentaryReference'] as String?;
    _theFlag = snapshotData['theFlag'] as String?;
    _theInterpretation = snapshotData['theInterpretation'] as String?;
    _theLabel = snapshotData['theLabel'] as String?;
    _theLink1 = snapshotData['theLink1'] as String?;
    _theLink10 = snapshotData['theLink10'] as String?;
    _theLink2 = snapshotData['theLink2'] as String?;
    _theLink3 = snapshotData['theLink3'] as String?;
    _theLink4 = snapshotData['theLink4'] as String?;
    _theLink5 = snapshotData['theLink5'] as String?;
    _theLink6 = snapshotData['theLink6'] as String?;
    _theLink7 = snapshotData['theLink7'] as String?;
    _theLink8 = snapshotData['theLink8'] as String?;
    _theLink9 = snapshotData['theLink9'] as String?;
    _theMethods = snapshotData['theMethods'] as String?;
    _theN = snapshotData['theN'] as String?;
    _theNew = snapshotData['theNew'] as String?;
    _thePage = snapshotData['thePage'] as String?;
    _thePatients = snapshotData['thePatients'] as String?;
    _theQuestion = snapshotData['theQuestion'] as String?;
    _theReference = snapshotData['theReference'] as String?;
    _theResult = snapshotData['theResult'] as String?;
    _theSubtopic = snapshotData['theSubtopic'] as String?;
    _theTopic = snapshotData['theTopic'] as String?;
    _theTrial = snapshotData['theTrial'] as String?;
    _twitterHash = snapshotData['twitterHash'] as String?;
    _twitterLink = snapshotData['twitterLink'] as String?;
    _twitterTag = snapshotData['twitterTag'] as String?;
    _uniqueId = snapshotData['uniqueId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('radonctables');

  static Stream<RadonctablesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RadonctablesRecord.fromSnapshot(s));

  static Future<RadonctablesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RadonctablesRecord.fromSnapshot(s));

  static RadonctablesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RadonctablesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RadonctablesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RadonctablesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RadonctablesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RadonctablesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRadonctablesRecordData({
  String? freetext,
  int? id,
  String? idAlt,
  DateTime? lastUpdate,
  String? lastUpdated,
  String? leadingQuestion,
  String? theAnswer,
  String? theCitation,
  String? theColor,
  String? theCommentary,
  String? theCommentaryReference,
  String? theFlag,
  String? theInterpretation,
  String? theLabel,
  String? theLink1,
  String? theLink10,
  String? theLink2,
  String? theLink3,
  String? theLink4,
  String? theLink5,
  String? theLink6,
  String? theLink7,
  String? theLink8,
  String? theLink9,
  String? theMethods,
  String? theN,
  String? theNew,
  String? thePage,
  String? thePatients,
  String? theQuestion,
  String? theReference,
  String? theResult,
  String? theSubtopic,
  String? theTopic,
  String? theTrial,
  String? twitterHash,
  String? twitterLink,
  String? twitterTag,
  String? uniqueId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'freetext': freetext,
      'id': id,
      'idAlt': idAlt,
      'lastUpdate': lastUpdate,
      'lastUpdated': lastUpdated,
      'leadingQuestion': leadingQuestion,
      'theAnswer': theAnswer,
      'theCitation': theCitation,
      'theColor': theColor,
      'theCommentary': theCommentary,
      'theCommentaryReference': theCommentaryReference,
      'theFlag': theFlag,
      'theInterpretation': theInterpretation,
      'theLabel': theLabel,
      'theLink1': theLink1,
      'theLink10': theLink10,
      'theLink2': theLink2,
      'theLink3': theLink3,
      'theLink4': theLink4,
      'theLink5': theLink5,
      'theLink6': theLink6,
      'theLink7': theLink7,
      'theLink8': theLink8,
      'theLink9': theLink9,
      'theMethods': theMethods,
      'theN': theN,
      'theNew': theNew,
      'thePage': thePage,
      'thePatients': thePatients,
      'theQuestion': theQuestion,
      'theReference': theReference,
      'theResult': theResult,
      'theSubtopic': theSubtopic,
      'theTopic': theTopic,
      'theTrial': theTrial,
      'twitterHash': twitterHash,
      'twitterLink': twitterLink,
      'twitterTag': twitterTag,
      'uniqueId': uniqueId,
    }.withoutNulls,
  );

  return firestoreData;
}

class RadonctablesRecordDocumentEquality
    implements Equality<RadonctablesRecord> {
  const RadonctablesRecordDocumentEquality();

  @override
  bool equals(RadonctablesRecord? e1, RadonctablesRecord? e2) {
    return e1?.freetext == e2?.freetext &&
        e1?.id == e2?.id &&
        e1?.idAlt == e2?.idAlt &&
        e1?.lastUpdate == e2?.lastUpdate &&
        e1?.lastUpdated == e2?.lastUpdated &&
        e1?.leadingQuestion == e2?.leadingQuestion &&
        e1?.theAnswer == e2?.theAnswer &&
        e1?.theCitation == e2?.theCitation &&
        e1?.theColor == e2?.theColor &&
        e1?.theCommentary == e2?.theCommentary &&
        e1?.theCommentaryReference == e2?.theCommentaryReference &&
        e1?.theFlag == e2?.theFlag &&
        e1?.theInterpretation == e2?.theInterpretation &&
        e1?.theLabel == e2?.theLabel &&
        e1?.theLink1 == e2?.theLink1 &&
        e1?.theLink10 == e2?.theLink10 &&
        e1?.theLink2 == e2?.theLink2 &&
        e1?.theLink3 == e2?.theLink3 &&
        e1?.theLink4 == e2?.theLink4 &&
        e1?.theLink5 == e2?.theLink5 &&
        e1?.theLink6 == e2?.theLink6 &&
        e1?.theLink7 == e2?.theLink7 &&
        e1?.theLink8 == e2?.theLink8 &&
        e1?.theLink9 == e2?.theLink9 &&
        e1?.theMethods == e2?.theMethods &&
        e1?.theN == e2?.theN &&
        e1?.theNew == e2?.theNew &&
        e1?.thePage == e2?.thePage &&
        e1?.thePatients == e2?.thePatients &&
        e1?.theQuestion == e2?.theQuestion &&
        e1?.theReference == e2?.theReference &&
        e1?.theResult == e2?.theResult &&
        e1?.theSubtopic == e2?.theSubtopic &&
        e1?.theTopic == e2?.theTopic &&
        e1?.theTrial == e2?.theTrial &&
        e1?.twitterHash == e2?.twitterHash &&
        e1?.twitterLink == e2?.twitterLink &&
        e1?.twitterTag == e2?.twitterTag &&
        e1?.uniqueId == e2?.uniqueId;
  }

  @override
  int hash(RadonctablesRecord? e) => const ListEquality().hash([
        e?.freetext,
        e?.id,
        e?.idAlt,
        e?.lastUpdate,
        e?.lastUpdated,
        e?.leadingQuestion,
        e?.theAnswer,
        e?.theCitation,
        e?.theColor,
        e?.theCommentary,
        e?.theCommentaryReference,
        e?.theFlag,
        e?.theInterpretation,
        e?.theLabel,
        e?.theLink1,
        e?.theLink10,
        e?.theLink2,
        e?.theLink3,
        e?.theLink4,
        e?.theLink5,
        e?.theLink6,
        e?.theLink7,
        e?.theLink8,
        e?.theLink9,
        e?.theMethods,
        e?.theN,
        e?.theNew,
        e?.thePage,
        e?.thePatients,
        e?.theQuestion,
        e?.theReference,
        e?.theResult,
        e?.theSubtopic,
        e?.theTopic,
        e?.theTrial,
        e?.twitterHash,
        e?.twitterLink,
        e?.twitterTag,
        e?.uniqueId
      ]);

  @override
  bool isValidKey(Object? o) => o is RadonctablesRecord;
}
