import 'package:flutter/material.dart';
import 'package:listkuliner/list_item.dart';
import 'package:listkuliner/makanan.dart';
import 'styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        const SizedBox(height: 20),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.list_alt_sharp, size: 30),
            SizedBox(width: 10),
            Text('List Kuliner Makanan', style: textHeader1),
          ],
        ),
        const Padding(padding: EdgeInsets.only(bottom: 20)),
        ListView.builder(
          itemCount: listMakanan.length,
          padding: const EdgeInsets.all(10),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return ListItem(makanan: listMakanan[index]);
          },
        ),
      ],
    );
  }
}
