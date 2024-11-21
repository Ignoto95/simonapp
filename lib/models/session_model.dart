class SessionModel {
  final String description;
  final DateTime timestamp;

  SessionModel({required this.description, required this.timestamp});

  Map<String, dynamic> toMap() {
    return {
      'description': description,
      'timestamp': timestamp.toIso8601String(),
    };
  }
}
