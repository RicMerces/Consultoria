import 'package:flutter/material.dart';

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
                          Image.asset('assets/img/Empresa.png'),
                          Image.asset('assets/img/Servicos.png'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/img/Clientes.png'),
                          Image.asset('assets/img/Contato.png'),
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
