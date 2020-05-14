import 'package:app_park_pay_go/tab/valor_ticket_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PagTab extends StatefulWidget {
  @override
  _PagTabState createState() => _PagTabState();
}

class _PagTabState extends State<PagTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: new Column(children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20.0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Center(
                        child: Text(
                          "Clique no botão abaixo para ativar a câmera",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    new Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 3.0),
                      alignment: Alignment.center,
                      child: new Row(
                        children: <Widget>[
                          new Expanded(
                            child: new FlatButton(
                              shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(0.0)),
                              color: Colors.grey[700],
                              onPressed: () {
                                ImagePicker.pickImage(source: ImageSource.camera);
                              },
                              child: new Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 12.0,
                                  horizontal: 15.0,
                                ),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new Expanded(
                                      child: Text(
                                        "Leitor de código de barras",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18,
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
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 40.0,
                          horizontal: 15.0),
                      child: Center(
                        child: Text(
                          "OU",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),

                    new Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              color: Colors.redAccent,
                              width: 1.0,
                              style: BorderStyle.solid),
                        ),
                      ),
                      padding: const EdgeInsets.only(left: 0.0, right: 10.0),
                      child: new Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new Expanded(
                            child: TextField(
                              obscureText: false,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Entre com o código de barras',
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                        ],
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
                                        "Continuar",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 15,
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



                  ],
                ),
              ),
            ])));
  }
}
