import 'package:bookcase/src/models/item_model.dart';
import 'package:bookcase/src/services/utils_services.dart';
import 'package:flutter/material.dart';

class BookScreen extends StatelessWidget {
  BookScreen({
    Key? key,
    required this.item,
  }) : super(key: key);

  final ItemModel item;

  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: [
              SizedBox(
                width: 200,
                child: Image.asset(item.imgUrl),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      //Name
                      Center(
                        child: Text(
                          item.itemName,
                          // style: TextStyle(),
                        ),
                      ),

                      //Autor
                      Center(
                        child: Text(item.author),
                      ),

                      //Nota
                      SizedBox(
                        child: Row(
                          children: const [
                            Icon(Icons.star_border),
                            Icon(Icons.star_border),
                            Icon(Icons.star_border),
                            Icon(Icons.star_border),
                            Icon(Icons.star_border),
                          ],
                        ),
                      ),

                      //Sinopse
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                          child: Text(item.description),
                        ),
                      ),

                      //Preço
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text('Preço de Venda'),
                            Text(
                              utilsServices.priceToCurrency(item.price),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text('Link'),
                            ),
                          ],
                        ),
                      ),

                      //Comentários
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Text(item.coments),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
