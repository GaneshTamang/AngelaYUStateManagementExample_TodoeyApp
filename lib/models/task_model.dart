class Task {
  String? name;
  bool isDone;
  Task({this.name, this.isDone = false});

  toggleCheck() {
    isDone = !isDone;
  }
}
