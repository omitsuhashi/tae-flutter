import 'dart:async';

class Server {
  final controller = StreamController<String>();
  List<String> users = [];

  Server() {
    controller.stream.listen((event) => print(event));
  }

  addUser(String name) => users.add(name);
  receiveMessage(String name, String message) =>
      controller.add('$name:$message');
}
