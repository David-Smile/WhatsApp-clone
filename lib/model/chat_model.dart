class ChatModel {
  final String? name;
  final String? message;
  final String? time;
  final String? image;
  final MessagesStatus? messagesStatus;

  ChatModel({this.name, this.message, this.time, this.image, this.messagesStatus});
}

List<ChatModel> dummyData = [
  ChatModel(
      name: 'Jane Doe',
      message: 'Hi Dave, Wassup',
      time: '11:50 am',
      image: 'assets/Ellipse.png',
      messagesStatus: MessagesStatus.unread,
  ),
  ChatModel(
      name: 'Samuel Jackson',
      message: 'I though you sent the BTC to my wallet already',
      time: '12:01 pm',
      image: 'assets/Ellipse2.png',
      messagesStatus: MessagesStatus.read,
  ),
  ChatModel(
      name: 'Ella',
      message: 'Okay',
      time: '12:03 pm',
      image: 'assets/Ellipse3.png',
      messagesStatus: MessagesStatus.unread,
  ),
  ChatModel(
      name: 'Coach Paul',
      message: 'Tomorrow\'s training starts by 5p.m',
      time: '01:10 pm',
      image: 'assets/Ellipse4.png',
      messagesStatus: MessagesStatus.unread,
  ),
  ChatModel(
      name: 'Bella Cruz',
      message: 'Cash received, coupon wil be sent',
      time: '12:10 pm',
      image: 'assets/Ellipse5.png'),
  ChatModel(
      name: 'Micholo Brian',
      message: 'Have you upgraded your flutter?',
      time: '02:10 pm',
      image: 'assets/Ellipse6.png',
      messagesStatus: MessagesStatus.unread,
  ),
  ChatModel(
      name: 'Duru Design',
      message: 'Check your email',
      time: '03:00 pm',
      image: 'assets/Ellipse10.png',
      messagesStatus: MessagesStatus.unread,
  ),
  ChatModel(
      name: 'Steve Ben',
      message: 'The meeting is about to start',
      time: '01:10 pm',
      image: 'assets/Ellipse7.png',
      messagesStatus: MessagesStatus.read,
  ),
  ChatModel(
      name: 'Esther',
      message: 'I\'ll soon be at your place ',
      time: '03:10 pm',
      image: 'assets/Ellipse8.png',
      messagesStatus: MessagesStatus.unread,
  ),
];

enum MessagesStatus {unread, read}