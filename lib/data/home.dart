class Home {
  final String? name;
  final String? hobby;

  Home({this.name, this.hobby});

  Home copyWith({
    String? name,
    String? hobby,
  }) {
    return Home(name: name ?? this.name, hobby: hobby ?? this.hobby);
  }
}
