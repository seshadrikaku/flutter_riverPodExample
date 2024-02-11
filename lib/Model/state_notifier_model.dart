class StateNotifierModelExample {
  final String? name;
  final int? age;
  final bool? isStudent;
  const StateNotifierModelExample({this.name, this.age, this.isStudent});
  StateNotifierModelExample copyWith(
      {String? name, int? age, bool? isStudent}) {
    return StateNotifierModelExample(
        name: name ?? this.name,
        age: age ?? this.age,
        isStudent: isStudent ?? this.isStudent);
  }

  Map<String, Object?> toJson() {
    return {'name': name, 'age': age, 'isStudent': isStudent};
  }

  static StateNotifierModelExample fromJson(Map<String, Object?> json) {
    return StateNotifierModelExample(
        name: json['name'] == null ? null : json['name'] as String,
        age: json['age'] == null ? null : json['age'] as int,
        isStudent:
            json['isStudent'] == null ? null : json['isStudent'] as bool);
  }

  @override
  String toString() {
    return '''StateNotifierModelExample(
                name:$name,
age:$age,
isStudent:$isStudent
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is StateNotifierModelExample &&
        other.runtimeType == runtimeType &&
        other.name == name &&
        other.age == age &&
        other.isStudent == isStudent;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, name, age, isStudent);
  }
}
