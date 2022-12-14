import 'package:flutter/material.dart';

import 'package:flutter_screens/dummy-data.dart';

import '../widgets/category_item.dart';

class CategiriesScreen extends StatelessWidget {
  const CategiriesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AA"),
      ),
      body: GridView(
        padding: EdgeInsets.all(20),
        children: [
          ...DUMMY_CATEGORIES
              .map(
                (cat) => CategoryItem(
                  color: cat.color,
                  title: cat.title,
                  id: cat.id,
                ),
              )
              .toList(),
        ],
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
