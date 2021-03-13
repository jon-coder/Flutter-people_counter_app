import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _pessoas = 0;
  String _infoText = 'Pode Entrar!';

  void alterarPessoas(int valor) {
    setState(() {
      _pessoas += valor;

      if (_pessoas < 15) {
        _infoText = 'Pode Entrar';
      } else if (_pessoas < 30) {
        _infoText = 'Atenção ao número de pessoas';
      } else {
        _infoText = 'CUIDADO! O número de pessoas excede o limite.';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'images/stay_safe.png',
            fit: BoxFit.cover,
            height: 1000,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Pessoas $_pessoas',
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text('+1',
                          style:
                              TextStyle(fontSize: 40.0, color: Colors.black87)),
                      onPressed: () {
                        alterarPessoas(1);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text('-1',
                          style:
                              TextStyle(fontSize: 40.0, color: Colors.black87)),
                      onPressed: () {
                        alterarPessoas(-1);
                      },
                    ),
                  ),
                ],
              ),
              Center(
                child: Text(
                  '$_infoText',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black87,
                    fontStyle: FontStyle.italic,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
