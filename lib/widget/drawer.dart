import 'package:flutter/material.dart';
import 'package:counter_7/page/watchlist/mywatchlist.dart';

import '../main.dart';
import '../page/budget/show_budget.dart';
import '../page/budget/tambah_budget.dart';

class ScfDrawer extends StatelessWidget {
  const ScfDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Menambahkan clickable menu
          ListTile(
            title: const Text('Counter'),
            onTap: () {
              // Route menu ke halaman utama
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const MyHomePage(title: 'Program Counter')),
              );
            },
          ),
          ListTile(
            title: const Text('Tambah Budget'),
            onTap: () {
              // Route menu ke halaman form
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyFormPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Data Budget'),
            onTap: () {
              // Route menu ke halaman form
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyBudgetPage()),
              );
            },
          ),
          ListTile(
            title: const Text('My Watch List'),
            onTap: () {
              // Route menu ke halaman form
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const WatchList()),
              );
            },
          ),
        ],
      ),
    );
  }
}
