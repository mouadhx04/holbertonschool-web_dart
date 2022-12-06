import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    final data = jsonDecode(await fetchUserData());
    final oreders = jsonDecode(await fetchUserOrders(data['id']));

    double finalResult = 0;

    for (String product in oreders) {
      finalResult += jsonDecode(await fetchProductPrice(product));
    }
    return finalResult;
  } catch (err) {
    return -1;
  }
}
