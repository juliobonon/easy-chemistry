import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class LiquidoCombinadoWindow extends StatefulWidget {
  @override
  _LiquidoCombinadoWindowState createState() => _LiquidoCombinadoWindowState();
}

class _LiquidoCombinadoWindowState extends State<LiquidoCombinadoWindow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liquido Combinado"),
        centerTitle: true,
        backgroundColor: Colors.blue,
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
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(hintText: 'Digite a variavel'),
              ),
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
                color: Colors.black45,
                child: Text("Make it rain!",
                    style: TextStyle(color: Colors.blue, fontSize: 25.0)),
                onPressed: () {},
              ),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Norbixina"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
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
                decoration: InputDecoration(hintText: 'Digite a variavel'),
              ),
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
                    style: TextStyle(color: Colors.yellow, fontSize: 25.0)),
                onPressed: () {},
              ),
            )
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

  void _calculate(){
    setState(() {
    double _value = double.parse(k0hController.text);

    double result =  _value * 56.11 * 100 / 20.000 *10;

    _texto = "Seu resultado é (${result.toStringAsPrecision(4)})";
    });
    

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KOH"),
        centerTitle: true,
        backgroundColor: Colors.green,
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
                  child: Text("20%",
                  style: TextStyle(color: Colors.white),),
                  onPressed: () {
                    _calculate();
                  },
                ),
              RaisedButton(
                color: Colors.black38,
                child: Text("40%",
                style: TextStyle(color: Colors.white),),
                onPressed: (){},
              ),
              ],
            ),
            Text(
                _texto,
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
          backgroundColor: Colors.pink,
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
          margin: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 50.0),
                child: Image(
                  image: AssetImage('imgs/hansen.jpg'),
                ),
              ),
              Container(
                child:            RaisedButton(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  "Norbixina",
                  style: TextStyle(color: Colors.pink, fontSize: 25.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NorbixinaWindow()),
                  );
                },
              ),
              ),
              
              RaisedButton(
                padding: EdgeInsets.fromLTRB(37, 0, 37, 0),
                child: Text(
                  "K0H",
                  style: TextStyle(color: Colors.pink, fontSize: 25.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => KOHWindow()),
                  );
                },
              ),
              RaisedButton(
                padding: EdgeInsets.fromLTRB(27, 0, 27, 0),
                child: Text(
                  "Liquido Combinado",
                  style: TextStyle(color: Colors.pink, fontSize: 25.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>LiquidoCombinadoWindow()),
                  );
                },
              ),
            ],
          ),
        )));
  }
}
