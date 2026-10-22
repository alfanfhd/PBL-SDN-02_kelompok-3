class AttendanceRequest {
  final String id;
  final String studentId;
  final String type;
  final DateTime startDate;
  final DateTime endDate;
  final String reason;
  final String status;
  final String? attachmentUrl;

  const AttendanceRequest({
    required this.id,
    required this.studentId,
    required this.type,
    required this.startDate,
    required this.endDate,
    required this.reason,
    required this.status,
    this.attachmentUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'studentId': studentId,
      'type': type,
      'startDate': startDate.toIso8601String(),
      'endDate': endDate.toIso8601String(),
      'reason': reason,
      'status': status,
      'attachmentUrl': attachmentUrl,
    };
  }

  factory AttendanceRequest.fromMap(Map<String, dynamic> map) {
    return AttendanceRequest(
      id: map['id'] as String? ?? '',
      studentId: map['studentId'] as String? ?? '',
      type: map['type'] as String? ?? '',
      startDate: DateTime.tryParse(map['startDate'] as String? ?? '') ?? DateTime.now(),
      endDate: DateTime.tryParse(map['endDate'] as String? ?? '') ?? DateTime.now(),
      reason: map['reason'] as String? ?? '',
      status: map['status'] as String? ?? '',
      attachmentUrl: map['attachmentUrl'] as String?,
    );
  }
}
