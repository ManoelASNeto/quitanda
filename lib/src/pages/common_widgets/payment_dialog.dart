import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:quitanda/src/models/order_model.dart';
import 'package:quitanda/src/services/utils_services.dart';

class PaymentDialog extends StatelessWidget {
  final OrderModel order;
  final UtilsServices utilsServices = UtilsServices();

  PaymentDialog({
    super.key,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Pagamento com Pix',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                QrImage(
                  data: "1234567890nika1622",
                  version: QrVersions.auto,
                  size: 200.0,
                ),
                Text(
                  'Vencimento ${utilsServices.formatDateTime(order.overdueDateTime!)}',
                  style: const TextStyle(fontSize: 12),
                ),
                Text(
                  'Total: ${utilsServices.priceToCurrency(order.total!)}',
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      side: const BorderSide(width: 2, color: Colors.green)),
                  onPressed: () {},
                  icon: const Icon(
                    MdiIcons.contentCopy,
                    size: 15,
                  ),
                  label: const Text(
                    'Copiar codigo Pix',
                    style: TextStyle(fontSize: 13),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              icon: const Icon(MdiIcons.closeOutline),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}
