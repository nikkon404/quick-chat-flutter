class Chat {
  final String? userId;
  final String? userName;

  final String? message;
  final String? time;

  Chat({
    this.userId,
    this.userName,
    this.message,
    this.time,
  });

  factory Chat.fromRawJson(Map<String, dynamic> jsonData) {
    return Chat(
        userId: jsonData['userId'],
        userName: jsonData['userName'],
        message: jsonData['message'],
        time: jsonData['time']);
  }
  Map<String, dynamic> toJson() {
    return {
      "userId": userId,
      "userName": userName,
      "message": message,
      "time": time,
    };
  }
}
