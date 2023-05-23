import 'package:flutter/material.dart';
import 'package:navigasi_dart/halaman2.dart';
import 'package:navigasi_dart/main.dart';

class Halaman3 extends StatelessWidget {
  const Halaman3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                // color: Colors.blue,
                  image: DecorationImage(
                      image: NetworkImage("data:image/png;base64,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"),
                      fit: BoxFit.cover)
              ),
              child: Text(''),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {

                Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MyApp(),)
                );
              },
            ),
            ListTile(
              title: const Text('Halaman 2'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MyWidged(),)
                );

              },
            ),
          ],
        ),
      ), appBar: AppBar(
        title: const Text("halaman2"),
    ),
    body: const Text("halaman masih kosong "),
    );
  }
}
