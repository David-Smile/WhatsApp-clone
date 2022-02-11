class ConversationModel{
  final String? message;
  final String? time;
  final MessagesType? messagesType;

  ConversationModel({this.message, this.time, this.messagesType});

}

List<ConversationModel> dummyData = [
  ConversationModel(
    message: 'Hi',
    time: '12:00',
    messagesType: MessagesType.receiver
  ),
  ConversationModel(
      message: 'Hello',
      time: '12:00',
      messagesType: MessagesType.sender
  ),
  ConversationModel(
      message: 'Please who is this',
      time: '12:01',
      messagesType: MessagesType.sender
  ),
  ConversationModel(
      message: 'It\'s your friend',
      time: '12:02',
      messagesType: MessagesType.receiver
  ),
  ConversationModel(
      message: 'I have a lot of friends',
      time: '12:00',
      messagesType: MessagesType.sender
  ),
];

enum MessagesType {sender, receiver}