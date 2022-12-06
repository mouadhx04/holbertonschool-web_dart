import '2-util.dart';

Future<void> getUser() async {
  try {
    await fetchUser();
  } catch (err) {
    print('error caught: $err');
  }
}
