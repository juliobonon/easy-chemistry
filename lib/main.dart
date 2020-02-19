import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class LiquidoCombinadoWindow extends StatefulWidget {
  @override
  _LiquidoCombinadoWindowState createState() => _LiquidoCombinadoWindowState();
}

class _LiquidoCombinadoWindowState extends State<LiquidoCombinadoWindow> {
  TextEditingController massaController = TextEditingController();
  TextEditingController absController = TextEditingController();

  String _infotext = "Coloque sua variavel na conta acima";

  void _calculate() {
    setState(() {
      double _massaValue = double.parse(massaController.text);
      double _absValue = double.parse(absController.text);

      double result = _absValue * 100 * 25 / 0.2 + _massaValue + 2870;

      _infotext = "Seu resultado é (${result.toStringAsPrecision(4)})";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liquido Combinado"),
        centerTitle: true,
        backgroundColor: Colors.green[900],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(10),
                child: Image(
                  image: AssetImage('imgs/flask.png'),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(hintText: 'ABS'),
                    controller: absController,
                  ),
                ),
                Spacer(),
                Flexible(
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(hintText: 'Massa'),
                    controller: massaController,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                ("(( (ABS x 100 x 25) ÷ 0,2) ÷ Massa) ÷ 2870"),
                style: TextStyle(color: Colors.blueGrey, fontSize: 15.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: RaisedButton(
                color: Colors.black45,
                child: Text("Make it rain!",
                    style: TextStyle(color: Colors.white, fontSize: 25.0)),
                onPressed: () {
                  _calculate();
                },
              ),
            ),
            Text(
              _infotext,
              style: TextStyle(color: Colors.black38, fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}

class NorbixinaWindow extends StatefulWidget {
  @override
  _NorbixinaWindowState createState() => _NorbixinaWindowState();
}

class _NorbixinaWindowState extends State<NorbixinaWindow> {
  TextEditingController norbixinaController = TextEditingController();

  String _texto = "Coloque sua variavel na conta acima";

  void _calculate() {
    setState(() {
      double _value = double.parse(norbixinaController.text);

      double result = _value * 56.11 * 100 / 20.000;

      _texto = "Seu resultado é (${result.toStringAsPrecision(4)})";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Norbixina"),
        centerTitle: true,
        backgroundColor: Colors.green[900],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(10),
                child: Image(
                  image: AssetImage('imgs/chemistry.png'),
                )),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(hintText: 'Digite a variavel'),
                  controller: norbixinaController),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                ("(Valor da titulação x 56,11 x 100 ) / 20.000"),
                style: TextStyle(color: Colors.blueGrey, fontSize: 15.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: RaisedButton(
                color: Colors.black38,
                child: Text("Make it rain!",
                    style: TextStyle(color: Colors.white, fontSize: 25.0)),
                onPressed: () {
                  _calculate();
                },
              ),
            ),
            Center(
                child: Text(
              _texto,
              style: TextStyle(color: Colors.black38, fontSize: 20.0),
            ))
          ],
        ),
      ),
    );
  }
}

class KOHWindow extends StatefulWidget {
  @override
  _KOHWindowState createState() => _KOHWindowState();
}

class _KOHWindowState extends State<KOHWindow> {
  TextEditingController k0hController = TextEditingController();

  String _texto = "Coloque sua variavel na conta acima";

  void _calculate() {
    setState(() {
      double _value = double.parse(k0hController.text);

      double result = _value * 56.11 * 100 / 20.000 * 10;

      _texto = "Seu resultado é (${result.toStringAsPrecision(4)})";
    });
  }

  void _calculate40() {
    setState(() {
      double _value = double.parse(k0hController.text);

      double result = _value * 56.11 * 100 / 20.000 * 20;

      _texto = "Seu resultado é (${result.toStringAsPrecision(4)})";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KOH"),
        centerTitle: true,
        backgroundColor: Colors.green[900],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(10),
                child: Image(
                  image: AssetImage('imgs/good.png'),
                )),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                textAlign: TextAlign.center,
                controller: k0hController,
                decoration: InputDecoration(hintText: 'Digite a variavel'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                ("(Valor da titulação x 56,11 x 100 ) / 20.000"),
                style: TextStyle(color: Colors.green, fontSize: 15.0),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  color: Colors.black38,
                  child: Text(
                    "20%",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    _calculate();
                  },
                ),
                RaisedButton(
                  color: Colors.black38,
                  child: Text(
                    "40%",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    _calculate40();
                  },
                ),
              ],
            ),
            Text(
              _texto,
              style: TextStyle(color: Colors.black38, fontSize: 20.0),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Easy Chemistry"),
          centerTitle: true,
          backgroundColor: Colors.green[900],
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {},
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: Center(
            child: Container(
          margin: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 50.0),
                child: Image(
                  image: AssetImage('imgs/hansen.jpg'),
                ),
              ),
              Flexible(
                child: FractionallySizedBox(
                    widthFactor: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.lightBlue[900],
                              Colors.lightBlue[600]
                            ],
                          )),
                      padding: EdgeInsets.all(20.0),
                      child: FlatButton(
                        child: Text(
                          "Norbixina",
                          style: TextStyle(color: Colors.white, fontSize: 25.0),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NorbixinaWindow()),
                          );
                        },
                      ),
                    )),
              ),
              Flexible(
                child: FractionallySizedBox(
                  widthFactor: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.lightBlue[900],
                            Colors.lightBlue[600]
                          ],
                        )),
                    padding: EdgeInsets.all(20),
                    child: FlatButton(
                      child: Text(
                        "K0H",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => KOHWindow()),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Flexible(
                child: FractionallySizedBox(
                  widthFactor: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.lightBlue[900],
                            Colors.lightBlue[600]
                          ],
                        )),
                    padding: EdgeInsets.all(20),
                    child: FlatButton(
                      child: Text(
                        "Liquido Combinado",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LiquidoCombinadoWindow()),
                        );
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        )));
  }
}
