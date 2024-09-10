import 'package:flutter/material.dart';
import 'package:flutter_application_2/util.dart';
import 'package:qr_flutter/qr_flutter.dart';

class qrCodePage extends StatefulWidget {
  const qrCodePage({super.key});

  @override
  State<qrCodePage> createState() => _qrCodePageState();
}

class _qrCodePageState extends State<qrCodePage> {
  TextEditingController _valorController = TextEditingController();
  String pixCode = '';

  void _gerarPixCode() {
    setState(() {
      double? valorPix = double.tryParse(_valorController.text);

      print(_valorController.text);
      pixCode = generatePixCode(valorPix);
      print(pixCode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gerador de Qr Code'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _valorController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  labelText: 'Valor do Pix',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.monetization_on)),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _gerarPixCode, child: Text('Gerar QrCode')),
            SizedBox(height: 20),
            Wrap(spacing: 8.0, runSpacing: 8.0, children: [
              _valorFixoBotao(0.01, 'R\$1,00'),
              _valorFixoBotao(1.00, 'R\$5,00'),
              _valorFixoBotao(1.00, 'R\$10,00'),
              _valorFixoBotao(1.00, 'R\$50,00'),
            ]),
            QrImageView(
              data: pixCode,
              size: 200,
            )
          ],
        ),
      ),
    );
  }

  Widget _valorFixoBotao(double valor, String label) {
    return ElevatedButton.icon(
      onPressed: _gerarPixCode,
      icon: const Icon(Icons.attach_money),
      label: Text(label),
    );
  }
}
