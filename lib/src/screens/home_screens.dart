import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listdemoapp/src/views/custom_item.dart';

class HomeScreen extends StatelessWidget{

  final listaPersonas = const ['Patricia','Yaretzin','Rubensin','Zaid',];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child:CupertinoPageScaffold(
        child: CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text('List Demo App'),
            ),
            SliverList(
              delegate: SliverChildListDelegate(<Widget>[
                ListTile(
                  leading: Icon(CupertinoIcons.add_circled_solid),
                  title: Text('Elemento 1'),
                  trailing: Icon(CupertinoIcons.right_chevron),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(CupertinoIcons.add_circled_solid),
                    title: Text('Elemento 1'),
                    trailing: Icon(CupertinoIcons.right_chevron),
                  )
                ),
                Card(
                  child: ListTile(
                    leading: Icon(CupertinoIcons.add_circled_solid),
                    title: Text('Elemento 1'),
                    trailing: Icon(CupertinoIcons.right_chevron),
                  )
                )
              ]),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context,i){
                return CustomItemList(titulo: listaPersonas[i],); 
              },
              childCount: listaPersonas.length
              ),
            )
          ],
        ),
      )
    );
  }

}