import 'package:consultoria/Pages/clientes.dart';
import 'package:consultoria/Pages/contato.dart';
import 'package:consultoria/Pages/servicos.dart';
import 'package:flutter/material.dart';
import 'Pages/empresa.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Consultoria(),
    ),
  );
}

class Consultoria extends StatefulWidget {
  const Consultoria({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Consultoria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff110129),
        appBar: AppBar(
          title: Text('Inicio'),
          elevation: 0,
          backgroundColor: Color(0xff110129),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 30),
                Image.asset('assets/img/logo.png'),
                const SizedBox(height: 30),
                Container(
                  child: Column(
                    children: [
                      const Text(
                        'Opções',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff110129)),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Options(asset: 'assets/img/Empresa.png'),
                          Options(asset: 'assets/img/Servicos.png')
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Options(asset: 'assets/img/Clientes.png'),
                          Options(asset: 'assets/img/Contato.png'),
                        ],
                      ),
                    ],
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(vertical: 50),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadiusDirectional.circular(30),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class Options extends StatelessWidget {
  final String asset;

  const Options({Key? key, required this.asset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _open() {
      if (asset.split('/')[2] == 'Empresa.png') {
        print('Empresa');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Empresa(),
          ),
        );
      } else if (asset.split('/')[2] == 'Servicos.png') {
        print('Servicos');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Servicos(),
          ),
        );
      } else if (asset.split('/')[2] == 'Clientes.png') {
        print('Clientes');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Clientes(),
          ),
        );
      } else if (asset.split('/')[2] == 'Contato.png') {
        print('Contato');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Contato(),
          ),
        );
      }
    }

    return GestureDetector(
      child: Image.asset(asset),
      onTap: () {
        _open();
      },
    );
  }
}
