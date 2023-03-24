class CallModel {
  final String name;

  final String time;
  final String avatar;
  CallModel({required this.name, required this.time, required this.avatar});
}

List<CallModel> callData = [
  CallModel(name: "Rahul", time: "10:20", avatar: "images/download1.jpeg"),
  CallModel(name: "Sonam", time: "10:30", avatar: "images/download2.jpeg"),
  CallModel(name: "Raghav", time: "10:50", avatar: "images/download3.jpeg"),
];
