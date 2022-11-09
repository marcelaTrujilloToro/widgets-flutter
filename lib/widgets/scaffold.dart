import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//solo lo tiene material, no cupertino
class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // define la apariencia basica cuando estamos utilizando un Material APP
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile",
        )
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            size: 35,
          ),
          onPressed: () {
            // ignore: avoid_print
            print("😻");
          }),
      // endDrawer: Drawer(),drawer de la derecha
      // drawerEnableOpenDragGesture: false, solo se activara el drawer con el boton, no deslizando
      onDrawerChanged: (isOpened) {
        print("Drawer $isOpened");
      },
      drawer: Drawer(
        elevation: 10,
        child: Column(
          children: const [
            //pendiente cambiar por el widget correcto ya que no se puede asumir que la altura siempre sera de 40
            SizedBox(
              height: 40,
            ),
            Text(
              'test@test.com',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      // backgroundColor: Colors.grey,
      appBar: AppBar(
        //cambiar el el statusBar
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
        //utilizar colores hexadecimales va 0xff seguido del color sin el #
        backgroundColor: Color(0xff01579b),
        elevation: 10,
        shadowColor: Colors.blue,
        title: Text(
          'Flutter App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      resizeToAvoidBottomInset: true,
      body: Container(
        color: Colors.grey,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: const[
            Expanded(
              child: Center(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: TextField(),
              )),
            ),
            Text("jajaja"),
            SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}
