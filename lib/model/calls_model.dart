class CallModel {
  final String? name;
  final String? datetime;
  final String? image;

  CallModel({this.name, this.datetime, this.image});
}

List<CallModel> dummyData = [
  CallModel(
      name: 'Said Mohammed',
      datetime: 'Today, 8:50 am',
      image: 'assets/Ellipse14.png'),
];
