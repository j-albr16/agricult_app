
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/marketplace_item.dart';
import './screens/marketplace_screen.dart';
import './screens/new_marketplace_item_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            builder: (context) => MarketItem(),)
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
      ),
        home: MarketplaceScreen(),
        routes: {
          NewMarketPlaceItem.routeName: (ctx) => NewMarketPlaceItem(),
        },
      ),
    );
  }
}
