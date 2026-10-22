class Student {
  final String id;
  final String nisn;
  final String name;
  final String classId;

  const Student({
    required this.id,
    required this.nisn,
    required this.name,
    required this.classId,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nisn': nisn,
      'name': name,
      'classId': classId,
    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      id: map['id'] as String? ?? '',
      nisn: map['nisn'] as String? ?? '',
      name: map['name'] as String? ?? '',
      classId: map['classId'] as String? ?? '',
    );
  }
}
