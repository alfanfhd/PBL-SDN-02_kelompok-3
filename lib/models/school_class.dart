class SchoolClass {
  final String id;
  final String name;
  final String? homeroomTeacherId;

  const SchoolClass({
    required this.id,
    required this.name,
    this.homeroomTeacherId,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'homeroomTeacherId': homeroomTeacherId,
    };
  }

  factory SchoolClass.fromMap(Map<String, dynamic> map) {
    return SchoolClass(
      id: map['id'] as String? ?? '',
      name: map['name'] as String? ?? '',
      homeroomTeacherId: map['homeroomTeacherId'] as String?,
    );
  }
}
