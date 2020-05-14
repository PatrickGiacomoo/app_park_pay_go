import 'package:flutter/material.dart';

class ValorTicketTab extends StatefulWidget {
  @override
  _ValorTicketTabState createState() => _ValorTicketTabState();
}

class _ValorTicketTabState extends State<ValorTicketTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pagar Estacionamento"),
          backgroundColor: Color.fromARGB(255, 203, 236, 241),
          centerTitle: true,
        ),
        body: Container(
            child: new Column(children: <Widget>[
          Container(
              padding: EdgeInsets.only(top: 20.0),
              child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 15.0),
                      child: Center(
                        child: Text(
                          "O valor a ser pago é:",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 70.0,
                          horizontal: 15.0),
                      child: Center(
                        child: Text(
                          "  R\$ \n25,00 ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 70.0,
                          ),
                        ),
                      ),
                    ),


                    new Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
                      alignment: Alignment.center,
                      child: new Row(
                        children: <Widget>[
                          new Expanded(
                            child: new FlatButton(
                              shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0)),
                              color: Colors.redAccent,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ValorTicketTab()),
                                );
                              },
                              child: new Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 20.0,
                                  horizontal: 20.0,
                                ),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new Expanded(
                                      child: Text(
                                        "Efetuar pagamento",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ]))
        ])));
  }
}
