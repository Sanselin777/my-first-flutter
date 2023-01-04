import 'package:flutter/material.dart';

import 'favorite_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) {
              return const FavoritePage();
            }),
          );
        },
        child: const Text('favorite page'),
      ),
    );
  }
}
