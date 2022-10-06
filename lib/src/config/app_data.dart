import 'package:bookcase/src/models/item_model.dart';

import '../models/plan_item_model.dart';

ItemModel book1 = ItemModel(
  itemName: 'Corte de Asas e Ruína',
  imgUrl: 'assets/books/aum.jpg',
  description:
      'Em Corte de Asas e Ruína a guerra se aproxima, um conflito que promete devastar Prythian. Em meio à Corte Primaveril, num perigoso jogo de intrigas e mentiras, a Grã-Senhora da Corte Noturna esconde seu laço de parceria e sua verdadeira lealdade.',
  author: ' Sarah J. Mass',
  price: 25.99,
  coments: 'Uol amazing',
);

ItemModel book2 = ItemModel(
  itemName: 'A Sereia',
  imgUrl: 'assets/books/dois.jpg',
  description:
      'Em Corte de Asas e Ruína a guerra se aproxima, um conflito que promete devastar Prythian. Em meio à Corte Primaveril, num perigoso jogo de intrigas e mentiras, a Grã-Senhora da Corte Noturna esconde seu laço de parceria e sua verdadeira lealdade.',
  author: ' Sarah J. Mass',
  price: 25.99,
  coments: 'Uol amazing',
);

ItemModel book3 = ItemModel(
  itemName: 'O Diário de Anne Frank',
  imgUrl: 'assets/books/tres.jpg',
  description:
      'Em Corte de Asas e Ruína a guerra se aproxima, um conflito que promete devastar Prythian. Em meio à Corte Primaveril, num perigoso jogo de intrigas e mentiras, a Grã-Senhora da Corte Noturna esconde seu laço de parceria e sua verdadeira lealdade.',
  author: ' Sarah J. Mass',
  price: 25.99,
  coments: 'Uol amazing',
);

ItemModel book4 = ItemModel(
  itemName: 'Anne de Green Gables',
  imgUrl: 'assets/books/quatro.jpg',
  description:
      'Em Corte de Asas e Ruína a guerra se aproxima, um conflito que promete devastar Prythian. Em meio à Corte Primaveril, num perigoso jogo de intrigas e mentiras, a Grã-Senhora da Corte Noturna esconde seu laço de parceria e sua verdadeira lealdade.',
  author: ' Sarah J. Mass',
  price: 25.99,
  coments: 'Uol amazing',
);

ItemModel book5 = ItemModel(
  itemName: 'Orgulho e Preconceito',
  imgUrl: 'assets/books/cinco.jpg',
  description:
      'Em Corte de Asas e Ruína a guerra se aproxima, um conflito que promete devastar Prythian. Em meio à Corte Primaveril, num perigoso jogo de intrigas e mentiras, a Grã-Senhora da Corte Noturna esconde seu laço de parceria e sua verdadeira lealdade.',
  author: ' Sarah J. Mass',
  price: 25.99,
  coments: 'Uol amazing',
);

ItemModel book6 = ItemModel(
  itemName: 'De Sangue e Cinzas',
  imgUrl: 'assets/books/seis.jpg',
  description:
      'Em Corte de Asas e Ruína a guerra se aproxima, um conflito que promete devastar Prythian. Em meio à Corte Primaveril, num perigoso jogo de intrigas e mentiras, a Grã-Senhora da Corte Noturna esconde seu laço de parceria e sua verdadeira lealdade.',
  author: ' Sarah J. Mass',
  price: 25.99,
  coments: 'Uol amazing',
);

List<ItemModel> items = [
  book1,
  book2,
  book3,
  book4,
  book5,
  book6,
];

List<PlanItemModel> planItems = [
  PlanItemModel(
    item: book1,
    date: '25/05 - 30/05',
  ),
  PlanItemModel(
    item: book2,
    date: '25/10 - 30/11',
  ),
  PlanItemModel(
    item: book4,
    date: '25/11 - 30/12',
  ),
];
