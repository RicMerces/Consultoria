import 'package:flutter/material.dart';

class Clientes extends StatefulWidget {
  const Clientes({Key? key}) : super(key: key);

  @override
  _ClientesState createState() => _ClientesState();
}

class _ClientesState extends State<Clientes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffffffff),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color(0xff110129),
        ),
        title: const Text(
          'Clientes',
          style: TextStyle(
            color: Color(0xff110129),
          ),
        ),
        backgroundColor: Color(0xfffffffff),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Cliente(nome: 'Ragnar', tipo: 'Pessoa'),
              Cliente(nome: 'Vinland', tipo: 'Empresa'),
              Cliente(nome: 'Bjorn', tipo: 'Pessoa'),
              Cliente(nome: 'Shelby LTDA', tipo: 'Empresa'),
              Cliente(nome: 'Ubbe', tipo: 'Pessoa'),
              Cliente(nome: 'Sigurd', tipo: 'Pessoa'),
            ],
          ),
        ),
      ),
    );
  }
}

class Cliente extends StatelessWidget {
  final String nome;
  final String tipo;

  const Cliente({Key? key, required this.nome, required this.tipo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/img/profilepic.png'),
              const SizedBox(
                width: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    tipo,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    nome,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: Color(0xff110129),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
