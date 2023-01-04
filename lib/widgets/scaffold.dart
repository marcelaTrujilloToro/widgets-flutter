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
      appBar: AppBar(
        //cambiar el el statusBar (hora, iconos de señal y bateria)
        systemOverlayStyle:
        // si pasamos dark usa blanco, si pasamos light usa negro
            SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),

        //utilizar colores hexadecimales va 0xff seguido del color sin el, no va entre ""
        backgroundColor: Color(0xff01579b),
        elevation: 2,
        shadowColor: Colors.blue,
        title: Text(
          'Flutter App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      // resizeToAvoidBottomInset: false, // no cambian las dimensiones del body cuando sale el teclado 
      body: Container(
        color: Colors.blueGrey.shade100,
        //se expande todo lo que pueda, 
        // el limite lo pone el scaffold
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
            Text("jajajajajajajaja"),
            SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}
