import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuizRecord extends FirestoreRecord {
  QuizRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "correctAnswer" field.
  String? _correctAnswer;
  String get correctAnswer => _correctAnswer ?? '';
  bool hasCorrectAnswer() => _correctAnswer != null;

  // "incorrectAnswers" field.
  List<String>? _incorrectAnswers;
  List<String> get incorrectAnswers => _incorrectAnswers ?? const [];
  bool hasIncorrectAnswers() => _incorrectAnswers != null;

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "section" field.
  String? _section;
  String get section => _section ?? '';
  bool hasSection() => _section != null;

  void _initializeFields() {
    _correctAnswer = snapshotData['correctAnswer'] as String?;
    _incorrectAnswers = getDataList(snapshotData['incorrectAnswers']);
    _question = snapshotData['question'] as String?;
    _section = snapshotData['section'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('quiz');

  static Stream<QuizRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuizRecord.fromSnapshot(s));

  static Future<QuizRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuizRecord.fromSnapshot(s));

  static QuizRecord fromSnapshot(DocumentSnapshot snapshot) => QuizRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuizRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuizRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuizRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuizRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuizRecordData({
  String? correctAnswer,
  String? question,
  String? section,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'correctAnswer': correctAnswer,
      'question': question,
      'section': section,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuizRecordDocumentEquality implements Equality<QuizRecord> {
  const QuizRecordDocumentEquality();

  @override
  bool equals(QuizRecord? e1, QuizRecord? e2) {
    const listEquality = ListEquality();
    return e1?.correctAnswer == e2?.correctAnswer &&
        listEquality.equals(e1?.incorrectAnswers, e2?.incorrectAnswers) &&
        e1?.question == e2?.question &&
        e1?.section == e2?.section;
  }

  @override
  int hash(QuizRecord? e) => const ListEquality()
      .hash([e?.correctAnswer, e?.incorrectAnswers, e?.question, e?.section]);

  @override
  bool isValidKey(Object? o) => o is QuizRecord;
}
