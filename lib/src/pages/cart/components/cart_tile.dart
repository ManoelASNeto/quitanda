import 'package:flutter/material.dart';
import 'package:quitanda/src/config/custom_colors.dart';
import 'package:quitanda/src/models/cart_item_model.dart';
import 'package:quitanda/src/pages/common_widgets/quantity_widget.dart';
import 'package:quitanda/src/services/utils_services.dart';

class CartTile extends StatefulWidget {
  final CartItemModel cartItemModel;
  final Function(CartItemModel) remove;

  const CartTile({
    super.key,
    required this.cartItemModel,
    required this.remove,
  });

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        leading: Image.asset(
          widget.cartItemModel.itemModel.imageUrl!,
          height: 60,
          width: 60,
        ),
        title: Text(
          widget.cartItemModel.itemModel.itemName!,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          utilsServices.priceToCurrency(widget.cartItemModel.totalPrice()),
          style: TextStyle(
            color: CustomColors.customSwatchColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: QuantityWidget(
          suffixText: widget.cartItemModel.itemModel.unit!,
          value: widget.cartItemModel.quantity,
          result: (int quantity) {
            setState(() {
              widget.cartItemModel.quantity = quantity;
              if (quantity == 0) {
                widget.remove(widget.cartItemModel);
              }
            });
          },
          isRemovable: true,
        ),
      ),
    );
  }
}
