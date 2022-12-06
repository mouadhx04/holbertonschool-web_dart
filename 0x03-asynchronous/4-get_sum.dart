import '4-util.dart';
import 'dart:convert';

calculateTotal() async {
  try {
    var user_data = await fetchUserData();
    var user_id = jsonDecode(user_data)['id'];
    var order = await fetchUserOrders(user_id);
    List<dynamic> product_list = jsonDecode(order);
    var price = 0.0;
    for (int i = 0; i < product_list.length; i++) {
      var pri = await fetchProductPrice(product_list[i]);
      price += num.parse(pri);
    }

    return price;
  } catch (error) {
    return -1;
  }
}
