class Attendance {
  final String id;
  final String studentId;
  final DateTime date;
  final String status;
  final String? notes;

  const Attendance({
    required this.id,
    required this.studentId,
    required this.date,
    required this.status,
    this.notes,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'studentId': studentId,
      'date': date.toIso8601String(),
      'status': status,
      'notes': notes,
    };
  }

  factory Attendance.fromMap(Map<String, dynamic> map) {
    return Attendance(
      id: map['id'] as String? ?? '',
      studentId: map['studentId'] as String? ?? '',
      date: DateTime.tryParse(map['date'] as String? ?? '') ?? DateTime.now(),
      status: map['status'] as String? ?? '',
      notes: map['notes'] as String?,
    );
  }
}
