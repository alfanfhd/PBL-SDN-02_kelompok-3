class TeachingJournal {
  final String id;
  final String teacherId;
  final String classId;
  final String subject;
  final String material;
  final DateTime date;
  final String? notes;

  const TeachingJournal({
    required this.id,
    required this.teacherId,
    required this.classId,
    required this.subject,
    required this.material,
    required this.date,
    this.notes,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'teacherId': teacherId,
      'classId': classId,
      'subject': subject,
      'material': material,
      'date': date.toIso8601String(),
      'notes': notes,
    };
  }

  factory TeachingJournal.fromMap(Map<String, dynamic> map) {
    return TeachingJournal(
      id: map['id'] as String? ?? '',
      teacherId: map['teacherId'] as String? ?? '',
      classId: map['classId'] as String? ?? '',
      subject: map['subject'] as String? ?? '',
      material: map['material'] as String? ?? '',
      date: DateTime.tryParse(map['date'] as String? ?? '') ?? DateTime.now(),
      notes: map['notes'] as String?,
    );
  }
}
