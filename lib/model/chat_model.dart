class ChatModel {
  final String? name;
  final String? message;
  final String? time;
  final String? image;

  ChatModel({this.name, this.message, this.time, this.image});
}

List<ChatModel> dummyData = [
  ChatModel(
      name: 'Jane Doe',
      message: 'Hi Dave, Wassup',
      time: '11:50 am',
      image: 'assets/Ellipse.png'),
  ChatModel(
      name: 'Samuel Jackson',
      message: 'I though you sent the BTC to my wallet already',
      time: '12:01 pm',
      image: 'assets/Ellipse2.png'),
  ChatModel(
      name: 'Ella',
      message: 'Okay',
      time: '12:03 pm',
      image: 'assets/Ellipse3.png'),
  ChatModel(
      name: 'Coach Paul',
      message: 'Tomorrow\'s training starts by 5p.m',
      time: '01:10 pm',
      image: 'assets/Ellipse4.png'),
  ChatModel(
      name: 'Bella Cruz',
      message: 'Cash received, coupon wil be sent',
      time: '12:10 pm',
      image: 'assets/Ellipse5.png'),
  ChatModel(
      name: 'Micholo Brian',
      message: 'Have you upgraded your flutter?',
      time: '02:10 pm',
      image: 'assets/Ellipse6.png'),
  ChatModel(
      name: 'Duru Design',
      message: 'Check your email',
      time: '03:00 pm',
      image: 'assets/Ellipse10.png'),
  ChatModel(
      name: 'Steve Ben',
      message: 'The meeting is about to start',
      time: '01:10 pm',
      image: 'assets/Ellipse7.png'),
  ChatModel(
      name: 'Esther',
      message: 'I\'ll soon be at your place ',
      time: '03:10 pm',
      image: 'assets/Ellipse8.png'),
];
