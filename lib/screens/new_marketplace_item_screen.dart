import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import '../providers/marketplace_item.dart';

class NewMarketPlaceItem extends StatelessWidget {
  static const routeName = '/new-marketplace-item';
  String inputTitle;
  String inputDescription;
  var uuid = Uuid();

  @override
  Widget build(BuildContext context) {
    final loadedItem = Provider.of<MarketItem>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('New Item'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
            controller: TextEditingController(),
            onChanged: (value){
              return inputTitle = value;
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Description'),
            controller: TextEditingController(),
            onChanged: (value){
              return inputDescription = value;
            },
          ),
          Spacer(),
          RaisedButton(
            child: Text('Add Item'),
            onPressed: () {
              loadedItem.addItem(
              title: inputTitle,
              owner: 'Jan',
              description: inputDescription,
              imageUrl: 'https://thumbs.dreamstime.com/t/zuchini-10224976.jpg',
              id: uuid.v1(),);
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}
