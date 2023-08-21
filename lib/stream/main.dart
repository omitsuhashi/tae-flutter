import 'package:flt/stream/server.dart';
import 'package:flt/stream/user.dart';

void main() async {
  final server = Server();
  final u1 = User('test', server);
  final u2 = User('tttt', server);

  u1.write("from test message");
  u2.write("from u2 message");
  await Future.delayed(const Duration(seconds: 3));
  u1.write("after 3 sec test");
}
