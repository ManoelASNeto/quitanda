import 'package:quitanda/src/models/cart_item_model.dart';
import 'package:quitanda/src/models/item_model.dart';
import 'package:quitanda/src/models/user_model.dart';

import '../models/order_model.dart';

ItemModel apple = ItemModel(
  itemName: 'Maçã',
  imageUrl: 'assets/fruits/apple.png',
  unit: 'Kg',
  price: 5.5,
  description:
      'A melhor maçã da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saúdavel',
);

ItemModel grape = ItemModel(
  itemName: 'Uva',
  imageUrl: 'assets/fruits/grape.png',
  unit: 'Kg',
  price: 7.4,
  description:
      'A melhor uva da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saúdavel',
);

ItemModel guava = ItemModel(
  itemName: 'Goiaba',
  imageUrl: 'assets/fruits/guava.png',
  unit: 'Kg',
  price: 11.5,
  description:
      'A melhor goiaba da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saúdavel',
);

ItemModel kiwi = ItemModel(
  itemName: 'kiwi',
  imageUrl: 'assets/fruits/kiwi.png',
  unit: 'Un',
  price: 2.5,
  description:
      'O melhor kiwi da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saúdavel',
);

ItemModel mango = ItemModel(
  itemName: 'Manga',
  imageUrl: 'assets/fruits/mango.png',
  unit: 'Un',
  price: 2.5,
  description:
      'A melhor manga da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saúdavel',
);

ItemModel papaya = ItemModel(
  itemName: 'Mamão',
  imageUrl: 'assets/fruits/papaya.png',
  unit: 'Kg',
  price: 8,
  description:
      'O melhor mamão da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saúdavel',
);

List<ItemModel> items = [
  apple,
  grape,
  guava,
  kiwi,
  mango,
  papaya,
];

List<String> categories = [
  'Frutas',
  'Legumes',
  'Grãos',
  'Temperos',
  'Cereais',
];

List<CartItemModel> cartItems = [
  CartItemModel(
    itemModel: apple,
    quantity: 2,
  ),
  CartItemModel(
    itemModel: mango,
    quantity: 1,
  ),
  CartItemModel(
    itemModel: guava,
    quantity: 3,
  ),
];

UserModel user = UserModel(
    name: 'Manoel',
    email: 'manoel_amancio@hotmail.com',
    phone: '11 9 98142710',
    cpf: '380.722.008-95',
    password: 'Nika1622');

List<OrderModel> orders = [
  OrderModel(
    id: 'asd123',
    createdDateTime: DateTime.parse(
      '2023-01-05 22:17:26.455',
    ),
    overdueDateTime: DateTime.parse(
      '2023-01-05 23:17:26.455',
    ),
    items: [
      CartItemModel(
        itemModel: apple,
        quantity: 2,
      ),
    ],
    status: 'pending_payment',
    copyAndPaste: 'q1w2e3r4t5y6',
    total: 11.0,
  ),
  OrderModel(
    id: '123asd',
    createdDateTime: DateTime.parse(
      '2023-01-05 22:17:26.455',
    ),
    overdueDateTime: DateTime.parse(
      '2023-01-05 23:17:26.455',
    ),
    items: [
      CartItemModel(
        itemModel: apple,
        quantity: 2,
      ),
      CartItemModel(
        itemModel: mango,
        quantity: 5,
      )
    ],
    status: 'refunded',
    copyAndPaste: 'q1w2e3r4t5y7',
    total: 11.0,
  ),
];
