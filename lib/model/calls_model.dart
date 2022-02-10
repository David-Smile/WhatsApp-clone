class CallModel {
  final String? name;
  final String? datetime;
  final String? image;
  final CallStatus? callStatus;
  final CallType? callType;

  CallModel({
    this.name,
    this.datetime,
    this.image,
    this.callStatus,
    this.callType,
  });
}

List<CallModel> dummyData = [
  CallModel(
    name: 'Said Mohammed',
    datetime: 'Today, 8:50 am',
    image: 'assets/Ellipse14.png',
    callStatus: CallStatus.accepted,
    callType: CallType.audio,
  ),

  CallModel(
    name: 'Lie Mohammed',
    datetime: 'Today, 8:50 am',
    image: 'assets/Ellipse14.png',
    callStatus: CallStatus.rejected,
    callType: CallType.video,
  ),
];

enum CallStatus { accepted, rejected }
enum CallType { audio, video }
