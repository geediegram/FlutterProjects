import 'package:coffee_shop/models/coffee.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'coffee_tile.dart';

class CoffeeList extends StatefulWidget {
  const CoffeeList({Key? key}) : super(key: key);

  @override
  State<CoffeeList> createState() => _CoffeeListState();
}

class _CoffeeListState extends State<CoffeeList> {
  @override
  Widget build(BuildContext context) {

    final coffeeList = Provider.of<List<Coffee>?>(context) ?? [] ;

    return ListView.builder(
      itemCount: coffeeList.length,
      itemBuilder: (context, index) {
        return CoffeeTile( coffee: coffeeList[index]);
      },
    );
  }
}
