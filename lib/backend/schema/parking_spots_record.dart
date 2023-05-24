import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParkingSpotsRecord extends FirestoreRecord {
  ParkingSpotsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "isFree" field.
  bool? _isFree;
  bool get isFree => _isFree ?? false;
  bool hasIsFree() => _isFree != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "reserver" field.
  String? _reserver;
  String get reserver => _reserver ?? '';
  bool hasReserver() => _reserver != null;

  // "owner" field.
  String? _owner;
  String get owner => _owner ?? '';
  bool hasOwner() => _owner != null;

  // "timeBegin" field.
  DateTime? _timeBegin;
  DateTime? get timeBegin => _timeBegin;
  bool hasTimeBegin() => _timeBegin != null;

  // "timeEnd" field.
  DateTime? _timeEnd;
  DateTime? get timeEnd => _timeEnd;
  bool hasTimeEnd() => _timeEnd != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _isFree = snapshotData['isFree'] as bool?;
    _location = snapshotData['location'] as LatLng?;
    _reserver = snapshotData['reserver'] as String?;
    _owner = snapshotData['owner'] as String?;
    _timeBegin = snapshotData['timeBegin'] as DateTime?;
    _timeEnd = snapshotData['timeEnd'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('parkingSpots');

  static Stream<ParkingSpotsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ParkingSpotsRecord.fromSnapshot(s));

  static Future<ParkingSpotsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ParkingSpotsRecord.fromSnapshot(s));

  static ParkingSpotsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ParkingSpotsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ParkingSpotsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ParkingSpotsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ParkingSpotsRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createParkingSpotsRecordData({
  String? name,
  bool? isFree,
  LatLng? location,
  String? reserver,
  String? owner,
  DateTime? timeBegin,
  DateTime? timeEnd,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'isFree': isFree,
      'location': location,
      'reserver': reserver,
      'owner': owner,
      'timeBegin': timeBegin,
      'timeEnd': timeEnd,
    }.withoutNulls,
  );

  return firestoreData;
}
