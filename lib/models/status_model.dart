class StatusModel {
  final String name;

  final String time;
  final String avatar;
  StatusModel({required this.name, required this.time, required this.avatar});
}

List<StatusModel> statusData = [
  StatusModel(name: "Rahul", time: "10:20", avatar: "images/download1.jpeg"),
  StatusModel(name: "Sonam", time: "10:30", avatar: "images/download2.jpeg"),
  StatusModel(name: "Raghav", time: "10:50", avatar: "images/download3.jpeg"),
];
