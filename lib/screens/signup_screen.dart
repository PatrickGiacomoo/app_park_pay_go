import 'package:app_park_pay_go/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scoped_model/scoped_model.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final _nameController = TextEditingController();
  final _cpfController = TextEditingController();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
        appBar: AppBar(
          title: Text("Criar Conta"),
          centerTitle: true,
        ),
        body: ScopedModelDescendant<UserModel>(
          builder: (context, child, model) {
            if (model.isLoading)
              return Center(
                child: CircularProgressIndicator(),);

            return Form(
                key: _formKey,
                child: ListView(
                  padding: EdgeInsets.all(16.0),
                  children: <Widget>[
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(hintText: "Nome completo"),
                      // ignore: missing_return
                      validator: (text) {
                        if (text.isEmpty )
                          return "Nome inválido!";
                        else{
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    TextFormField(
                      controller: _cpfController,
                      decoration: InputDecoration(hintText: "Digite seu CPF"),
                      // ignore: missing_return
                      validator: (text) {
                        if (text.isEmpty ||
                            (text.length > 11 || text.length < 11))
                          return "CPF inválido!";
                        else{
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(hintText: "E-MAIL"),
                      keyboardType: TextInputType.emailAddress,
                      // ignore: missing_return
                      validator: (text) {
                        if (text.isEmpty || !text.contains("@"))
                          return "E-mail inválido!";
                        else{
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    TextFormField(
                      controller: _passController,
                      decoration: InputDecoration(hintText: "SENHA"),
                      obscureText: true,
                      // ignore: missing_return
                      validator: (text) {
                        if (text.isEmpty || text.length < 6)
                          return "Senha inválida";
                        else{
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    SizedBox(
                      height: 44.0,
                      child: RaisedButton(
                        child: Text("Criar Conta",
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        textColor: Colors.white,
                        color: Theme.of(context).primaryColor,
                        onPressed: (){
                          if(_formKey.currentState.validate()){

                            Map<String, dynamic> userData = {
                              "name": _nameController.text,
                              "email": _emailController.text,
                              "cpf": _cpfController.text
                            };

                            model.signUp(
                                userData: userData,
                                pass: _passController.text,
                                onSuccess: _onSuccess,
                                onFail: _onFail
                            );
                          }
                        },
                      ),
                    ),
                  ],
                ),
            );
          },
        )
    );
  }

  void _onSuccess(){
    _scaffoldKey.currentState.showSnackBar(
        SnackBar(content: Text("Usuário criado com sucesso!"),
          backgroundColor: Theme.of(context).primaryColor,
          duration: Duration(seconds: 2),
        )
    );
    Future.delayed(Duration(seconds: 2)).then((_){
      Navigator.of(context).pop();
    });
  }

  void _onFail(){
    _scaffoldKey.currentState.showSnackBar(
        SnackBar(content: Text("Falha ao criar usuário!"),
          backgroundColor: Colors.redAccent,
          duration: Duration(seconds: 2),
        )
    );
  }

}

