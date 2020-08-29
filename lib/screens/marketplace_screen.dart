import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/marketplace_item.dart';
import '../screens/new_marketplace_item_screen.dart';
import '../widgets/marketplace_item.dart' as mpi;

class MarketplaceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loadedItem = Provider.of<MarketItem>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Marketplace'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: (){
              Navigator.of(context).pushNamed(NewMarketPlaceItem.routeName);
            },
          ),
        ],
      ),
      drawer: Drawer(),
      body: ListView(
        children:
          loadedItem.items.map((element) => mpi.MarketPlaceItem(
            title: element.title,
            imageUrl: element.imageUrl,
            id: element.id,
            description: element.description,
            owner: element.owner,
          )).toList(),
      ),
    );
  }
}
