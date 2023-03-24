class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatar;
  ChatModel(
      {required this.name,
      required this.message,
      required this.time,
      required this.avatar});
}

List<ChatModel> chatData = [
  ChatModel(
      name: "Rahul",
      message: "Hello",
      time: "10:20",
      avatar: "images/download1.jpeg"),
  ChatModel(
      name: "Sonam",
      message: "Hi",
      time: "10:22",
      avatar: "images/download2.jpeg"),
  ChatModel(
      name: "Jay",
      message: "Hello There",
      time: "10:51",
      avatar: "images/download3.jpeg"),
  ChatModel(
      name: "Jaya",
      message: "Hello There now ",
      time: "10:57",
      avatar: "images/download.jpeg"),
];
