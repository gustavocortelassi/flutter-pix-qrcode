import 'package:flutter/material.dart';
import 'package:flutter_application_2/GerarQRCode.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => homePageState();
}

// ignore: camel_case_types
class homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gerador de QR CODE'),
        backgroundColor: Colors.teal,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Gustavo'),
              accountEmail: Text('gutocortelassi72@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(''),
              ),
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
            ),
            ListTile(
              title: const Text('Gerar QR CODE'),
              leading: const Icon(Icons.account_balance_wallet_rounded),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => qrCodePage()));
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Configuracoes'),
              leading: Icon(Icons.settings),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Sobre'),
              leading: Icon(Icons.settings),
              onTap: () {},
            ),
            const Divider(),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Icon(Icons.home, size: 100, color: Colors.teal),
              SizedBox(height: 20),
              Text(
                'Bem vindo ao app de QR Code',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.teal.shade700,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
