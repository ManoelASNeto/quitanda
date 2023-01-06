import 'package:quitanda/src/models/item_model.dart';

class CartItemModel {
  ItemModel itemModel;
  int quantity;

  CartItemModel({
    required this.itemModel,
    required this.quantity,
  });

  double totalPrice() {
    return itemModel.price! * quantity;
  }
}
