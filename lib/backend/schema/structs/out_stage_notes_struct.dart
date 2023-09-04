// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OutStageNotesStruct extends FFFirebaseStruct {
  OutStageNotesStruct({
    InnerStageNotesStruct? docRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _docRef = docRef,
        super(firestoreUtilData);

  // "docRef" field.
  InnerStageNotesStruct? _docRef;
  InnerStageNotesStruct get docRef => _docRef ?? InnerStageNotesStruct();
  set docRef(InnerStageNotesStruct? val) => _docRef = val;
  void updateDocRef(Function(InnerStageNotesStruct) updateFn) =>
      updateFn(_docRef ??= InnerStageNotesStruct());
  bool hasDocRef() => _docRef != null;

  static OutStageNotesStruct fromMap(Map<String, dynamic> data) =>
      OutStageNotesStruct(
        docRef: InnerStageNotesStruct.maybeFromMap(data['docRef']),
      );

  static OutStageNotesStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? OutStageNotesStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'docRef': _docRef?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'docRef': serializeParam(
          _docRef,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static OutStageNotesStruct fromSerializableMap(Map<String, dynamic> data) =>
      OutStageNotesStruct(
        docRef: deserializeStructParam(
          data['docRef'],
          ParamType.DataStruct,
          false,
          structBuilder: InnerStageNotesStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'OutStageNotesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OutStageNotesStruct && docRef == other.docRef;
  }

  @override
  int get hashCode => const ListEquality().hash([docRef]);
}

OutStageNotesStruct createOutStageNotesStruct({
  InnerStageNotesStruct? docRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OutStageNotesStruct(
      docRef: docRef ?? (clearUnsetFields ? InnerStageNotesStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OutStageNotesStruct? updateOutStageNotesStruct(
  OutStageNotesStruct? outStageNotes, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    outStageNotes
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOutStageNotesStructData(
  Map<String, dynamic> firestoreData,
  OutStageNotesStruct? outStageNotes,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (outStageNotes == null) {
    return;
  }
  if (outStageNotes.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && outStageNotes.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final outStageNotesData =
      getOutStageNotesFirestoreData(outStageNotes, forFieldValue);
  final nestedData =
      outStageNotesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = outStageNotes.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOutStageNotesFirestoreData(
  OutStageNotesStruct? outStageNotes, [
  bool forFieldValue = false,
]) {
  if (outStageNotes == null) {
    return {};
  }
  final firestoreData = mapToFirestore(outStageNotes.toMap());

  // Handle nested data for "docRef" field.
  addInnerStageNotesStructData(
    firestoreData,
    outStageNotes.hasDocRef() ? outStageNotes.docRef : null,
    'docRef',
    forFieldValue,
  );

  // Add any Firestore field values
  outStageNotes.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOutStageNotesListFirestoreData(
  List<OutStageNotesStruct>? outStageNotess,
) =>
    outStageNotess
        ?.map((e) => getOutStageNotesFirestoreData(e, true))
        .toList() ??
    [];
