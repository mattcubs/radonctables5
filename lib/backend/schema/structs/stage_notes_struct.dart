// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StageNotesStruct extends FFFirebaseStruct {
  StageNotesStruct({
    String? stageId,
    String? text,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _stageId = stageId,
        _text = text,
        super(firestoreUtilData);

  // "stageId" field.
  String? _stageId;
  String get stageId => _stageId ?? '';
  set stageId(String? val) => _stageId = val;
  bool hasStageId() => _stageId != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) => _text = val;
  bool hasText() => _text != null;

  static StageNotesStruct fromMap(Map<String, dynamic> data) =>
      StageNotesStruct(
        stageId: data['stageId'] as String?,
        text: data['text'] as String?,
      );

  static StageNotesStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? StageNotesStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'stageId': _stageId,
        'text': _text,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'stageId': serializeParam(
          _stageId,
          ParamType.String,
        ),
        'text': serializeParam(
          _text,
          ParamType.String,
        ),
      }.withoutNulls;

  static StageNotesStruct fromSerializableMap(Map<String, dynamic> data) =>
      StageNotesStruct(
        stageId: deserializeParam(
          data['stageId'],
          ParamType.String,
          false,
        ),
        text: deserializeParam(
          data['text'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'StageNotesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StageNotesStruct &&
        stageId == other.stageId &&
        text == other.text;
  }

  @override
  int get hashCode => const ListEquality().hash([stageId, text]);
}

StageNotesStruct createStageNotesStruct({
  String? stageId,
  String? text,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    StageNotesStruct(
      stageId: stageId,
      text: text,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

StageNotesStruct? updateStageNotesStruct(
  StageNotesStruct? stageNotes, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    stageNotes
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addStageNotesStructData(
  Map<String, dynamic> firestoreData,
  StageNotesStruct? stageNotes,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (stageNotes == null) {
    return;
  }
  if (stageNotes.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && stageNotes.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final stageNotesData = getStageNotesFirestoreData(stageNotes, forFieldValue);
  final nestedData = stageNotesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = stageNotes.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getStageNotesFirestoreData(
  StageNotesStruct? stageNotes, [
  bool forFieldValue = false,
]) {
  if (stageNotes == null) {
    return {};
  }
  final firestoreData = mapToFirestore(stageNotes.toMap());

  // Add any Firestore field values
  stageNotes.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getStageNotesListFirestoreData(
  List<StageNotesStruct>? stageNotess,
) =>
    stageNotess?.map((e) => getStageNotesFirestoreData(e, true)).toList() ?? [];
