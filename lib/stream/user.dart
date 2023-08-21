import 'package:flt/stream/server.dart';

class User {
  late String name;
  late Server server;

  User(this.name, this.server) {
    server.addUser(name);
  }
  write(String msg) => server.receiveMessage(name, msg);
}
