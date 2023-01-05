import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                color: Colors.grey,
                //imagen de la carpeta assets
                child: Image.asset('assets/images/shogun.png',
                    height: 200, width: 100, fit: BoxFit.cover),
              ),
              Container(
                color: Colors.blueGrey,
                // imagen de internet
                child: Image.network(
                  'https://staticg.sportskeeda.com/editor/2022/12/26193-16709358818485-1920.jpg',
                  loadingBuilder: (_, child, event) {
                    if (event == null) {
                      return child;
                    }
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ),
              // se instala para que mantenga la imagen en cache y no la tenga que traer cada vez (eficiencia)
              CachedNetworkImage(
                imageUrl: "https://static.wikia.nocookie.net/gen-impact/images/4/44/Arte_de_personaje_Cyno.png/revision/latest?cb=20221002190943&path-prefix=es",
                height: 300,
                placeholder: (_, __) => Center(child: CircularProgressIndicator()),
                errorWidget: (_, __, ___) => Icon(Icons.error),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// para imagenes personalizadas se añaden en el pubspec.yaml para luego usarlas en el proyecto