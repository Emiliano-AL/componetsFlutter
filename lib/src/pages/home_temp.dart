import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Componentes Body')
      ),
      body: ListView(
        children: _crearItemsCorta()
      ),
    );
  }

  List<Widget> _crearItems(){
    List<Widget> lista = new List<Widget>();
    for(String opt in opciones){
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)
        ..add(Divider());
      //lista.add(Divider());
    }
    return lista;
  }

  List<Widget> _crearItemsCorta(){
    return opciones.map((item) =>
       Column(
           children: <Widget>[
             ListTile(
               title: Text(item),
               subtitle: Text('Hola mundo'),
               leading: Icon(Icons.map),
               trailing: Icon(Icons.keyboard_arrow_right),
               onTap: (){},
             ),
             Divider()
           ]
       )
    ).toList();
  }
}
