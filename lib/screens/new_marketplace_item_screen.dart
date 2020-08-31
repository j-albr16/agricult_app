import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/marketplace_item.dart';

class NewMarketPlaceItem extends StatelessWidget {
  static const routeName = '/new-marketplace-item';
  final _form = GlobalKey<FormState>();

  final


  @override
  Widget build(BuildContext context) {
    final loadedItem = Provider.of<MarketItem>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('New Item'),
      ),
      body: Form(
        key: _form,
        child: ListView(children: <Widget>[
          TextFormField(
            textInputAction: TextInputAction.next,
            onFieldSubmitted: ,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(labelText: 'Hi'),
            enableSuggestions: ,
            autofillHints: ,
            initialValue: ,
            onSaved: ,
            validator: ,
          )
        ],
        ),
      ),
    );
  }
}

