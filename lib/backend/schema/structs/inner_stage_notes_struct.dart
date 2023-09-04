// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InnerStageNotesStruct extends FFFirebaseStruct {
  InnerStageNotesStruct({
    StageNotesStruct? uniqueId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _uniqueId = uniqueId,
        super(firestoreUtilData);

  // "uniqueId" field.
  StageNotesStruct? _uniqueId;
  StageNotesStruct get uniqueId => _uniqueId ?? StageNotesStruct();
  set uniqueId(StageNotesStruct? val) => _uniqueId = val;
  void updateUniqueId(Function(StageNotesStruct) updateFn) =>
      updateFn(_uniqueId ??= StageNotesStruct());
  bool hasUniqueId() => _uniqueId != null;

  static InnerStageNotesStruct fromMap(Map<String, dynamic> data) =>
      InnerStageNotesStruct(
        uniqueId: StageNotesStruct.maybeFromMap(data['uniqueId']),
      );

  static InnerStageNotesStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? InnerStageNotesStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'uniqueId': _uniqueId?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'uniqueId': serializeParam(
          _uniqueId,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static InnerStageNotesStruct fromSerializableMap(Map<String, dynamic> data) =>
      InnerStageNotesStruct(
        uniqueId: deserializeStructParam(
          data['uniqueId'],
          ParamType.DataStruct,
          false,
          structBuilder: StageNotesStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'InnerStageNotesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is InnerStageNotesStruct && uniqueId == other.uniqueId;
  }

  @override
  int get hashCode => const ListEquality().hash([uniqueId]);
}

InnerStageNotesStruct createInnerStageNotesStruct({
  StageNotesStruct? uniqueId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    InnerStageNotesStruct(
      uniqueId: uniqueId ?? (clearUnsetFields ? StageNotesStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

InnerStageNotesStruct? updateInnerStageNotesStruct(
  InnerStageNotesStruct? innerStageNotes, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    innerStageNotes
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addInnerStageNotesStructData(
  Map<String, dynamic> firestoreData,
  InnerStageNotesStruct? innerStageNotes,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (innerStageNotes == null) {
    return;
  }
  if (innerStageNotes.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && innerStageNotes.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final innerStageNotesData =
      getInnerStageNotesFirestoreData(innerStageNotes, forFieldValue);
  final nestedData =
      innerStageNotesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = innerStageNotes.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getInnerStageNotesFirestoreData(
  InnerStageNotesStruct? innerStageNotes, [
  bool forFieldValue = false,
]) {
  if (innerStageNotes == null) {
    return {};
  }
  final firestoreData = mapToFirestore(innerStageNotes.toMap());

  // Handle nested data for "uniqueId" field.
  addStageNotesStructData(
    firestoreData,
    innerStageNotes.hasUniqueId() ? innerStageNotes.uniqueId : null,
    'uniqueId',
    forFieldValue,
  );

  // Add any Firestore field values
  innerStageNotes.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getInnerStageNotesListFirestoreData(
  List<InnerStageNotesStruct>? innerStageNotess,
) =>
    innerStageNotess
        ?.map((e) => getInnerStageNotesFirestoreData(e, true))
        .toList() ??
    [];
