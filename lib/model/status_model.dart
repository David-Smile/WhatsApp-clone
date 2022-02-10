class MyModel {
  final String? name;
  final String? time;
  final String? image;

  MyModel({this.name, this.time, this.image});
}

List<MyModel> myData = [
  MyModel(
      name: 'My Status', time: '30 minutes ago', image: 'assets/Ellipse9.png'),
];

class _RecentModel {
  final String? name;
  final String? time;
  final String? image;

  _RecentModel({this.name, this.time, this.image});
}

List<_RecentModel> recentDummyData = [
  _RecentModel(
      name: 'Daniel Scott',
      time: '30 minutes ago',
      image: 'assets/Ellipse11.png'),
  _RecentModel(
      name: 'Nadia Simeon',
      time: '45 minutes ago',
      image: 'assets/Ellipse12.png'),
  _RecentModel(
      name: 'Yodit Mill',
      time: '30 minutes ago',
      image: 'assets/Ellipse13.png'),
];

class _ViewedModel {
  final String? name;
  final String? time;
  final String? image;

  _ViewedModel({this.name, this.time, this.image});
}

List<_ViewedModel> viewedDummyData = [
  _ViewedModel(
      name: 'My Status', time: '30 minutes ago', image: 'assets/Ellipse9.png'),
];
