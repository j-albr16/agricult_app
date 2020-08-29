import 'package:agricult_app/screens/marketplace_screen.dart';
import 'package:agricult_app/screens/new_marketplace_item_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/marketplace_item.dart';

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
            create: (context) => MarketItem(),)
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
