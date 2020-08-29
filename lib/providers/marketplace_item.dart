import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MarketPlaceItem {
  final String title;
  final String owner;
  final String id;
  final String imageUrl;
  final String description;

  MarketPlaceItem({
    this.title,
    this.id,
    this.owner,
    this.imageUrl,
    this.description,
  });
}

class MarketItem with ChangeNotifier {
  List<MarketPlaceItem> _items = [];

  List<MarketPlaceItem> get items {
    return [..._items];
  }

  void addItem({
    String title,
    String owner,
    String id,
    String imageUrl,
    String description,
  }) {
    _items.add(MarketPlaceItem(
      title: title,
      owner: owner,
      id: id,
      imageUrl: imageUrl,
      description: description,
    ));
    print(items[0].title);
    print(items[0].description);
    notifyListeners();
  }
}
