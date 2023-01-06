import 'package:flutter/material.dart';
import 'package:quitanda/src/config/app_data.dart' as app_data;
import 'package:quitanda/src/pages/orders/components/order_tile.dart';

class OrdersTab extends StatelessWidget {
  const OrdersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pedidos'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://img.freepik.com/vetores-premium/padrao-de-fundo-sem-emenda-com-legumes_202271-128.jpg?w=740',
            ),
            fit: BoxFit.cover,
            opacity: 0.5,
          ),
        ),
        child: ListView.separated(
          padding: const EdgeInsets.all(16),
          physics: const BouncingScrollPhysics(),
          itemBuilder: (_, index) =>
              OrderTle(orderModel: app_data.orders[index]),
          // return Text(app_data.orders[index].id!);

          separatorBuilder: (_, index) => const SizedBox(
            height: 10,
          ),
          itemCount: app_data.orders.length,
        ),
      ),
    );
  }
}
