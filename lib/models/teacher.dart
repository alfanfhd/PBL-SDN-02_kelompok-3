class Teacher {
  final String id;
  final String nip;
  final String name;
  final String email;

  const Teacher({
    required this.id,
    required this.nip,
    required this.name,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nip': nip,
      'name': name,
      'email': email,
    };
  }

  factory Teacher.fromMap(Map<String, dynamic> map) {
    return Teacher(
      id: map['id'] as String? ?? '',
      nip: map['nip'] as String? ?? '',
      name: map['name'] as String? ?? '',
      email: map['email'] as String? ?? '',
    );
  }
}
