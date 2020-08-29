import 'package:flutter/material.dart';

class MarketPlaceItem extends StatelessWidget {
  final String title;
  final String owner;
  final String id;
  final String imageUrl;
  final String description;

  MarketPlaceItem(
      {this.description, this.imageUrl, this.owner, this.id, this.title,});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl,),
      ),
      trailing: Text(owner),
      title: Text(title),
      subtitle: Text(description),
    );
  }
}
