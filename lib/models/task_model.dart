import 'dart:convert';

class Task {
  String text;
  bool isDone;
  String scheduledDate;
  Task({
    required this.text,
    this.isDone = false,
    required this.scheduledDate,
  });

  Task copyWith({
    String? text,
    bool? isDone,
    String? scheduledDate,
  }) {
    return Task(
      text: text ?? this.text,
      isDone: isDone ?? this.isDone,
      scheduledDate: scheduledDate ?? this.scheduledDate,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
      'isDone': isDone,
      'scheduledDate': scheduledDate,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      text: map['text'] as String,
      isDone: map['isDone'] as bool,
      scheduledDate: map['scheduledDate'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Task.fromJson(String source) =>
      Task.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Task(text: $text, isDone: $isDone, scheduledDate: $scheduledDate)';

  @override
  bool operator ==(covariant Task other) {
    if (identical(this, other)) return true;

    return other.text == text &&
        other.isDone == isDone &&
        other.scheduledDate == scheduledDate;
  }

  @override
  int get hashCode => text.hashCode ^ isDone.hashCode ^ scheduledDate.hashCode;

  void toggleDone() {
    isDone = !isDone;
  }
}
