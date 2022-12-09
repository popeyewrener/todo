import 'package:equatable/equatable.dart';

class Task extends Equatable {
  final String title;
  bool? isdone;
  bool? isdeleted;

  Task({required this.title, this.isdone, this.isdeleted}) {
    isdone = isdone ?? false;
    isdeleted = isdeleted ?? false;
  }

  Task copyWith({
    String? title,
    bool? isdone,
    bool? isdeleted,
  }) {
    return Task(
      title: title ?? this.title,
      isdone: isdone ?? this.isdone,
      isdeleted: isdeleted ?? this.isdeleted,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'isdone': isdone,
      'isdeleted': isdeleted,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      title: map['title'] ?? '',
      isdone: map['isdone'],
      isdeleted: map['isdeleted'],
    );
  }

  @override
  List<Object?> get props => [title, isdone, isdeleted];
}
