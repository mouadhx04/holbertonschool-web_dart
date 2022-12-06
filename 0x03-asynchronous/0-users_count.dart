import '0-util.dart';

Future<void> usersCount() {
  return fetchUsersCount().then((value) => print(value));
}
