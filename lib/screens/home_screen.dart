import 'package:app_park_pay_go/tab/home_tab.dart';
import 'package:app_park_pay_go/tab/pag_tab.dart';
import 'package:app_park_pay_go/tab/places_tab.dart';
import 'package:app_park_pay_go/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Pagar Estacionamento"),
            backgroundColor: Color.fromARGB(255, 203, 236, 241),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: PagTab(),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Nossos estacionamentos"),
            backgroundColor: Color.fromARGB(255, 203, 236, 241),
            centerTitle: true,
          ),
          body: PlacesTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Formas de Pagamento"),
            backgroundColor: Color.fromARGB(255, 203, 236, 241),
            centerTitle: true,
          ),
          body: Container(color: Colors.redAccent),
          drawer: CustomDrawer(_pageController),
        )
      ],
    );
  }
}
