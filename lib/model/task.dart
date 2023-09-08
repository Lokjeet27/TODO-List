class Task {
  late String name;
  bool isDone;
  Task({required this.name, this.isDone = false});

  bool toggleDone() {
    return isDone = !isDone;
  }
}
