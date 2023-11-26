import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class listTileWidger extends StatelessWidget {
  const listTileWidger({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, 
        title: const Text('ListTile'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
        return const Card(
          child: ListTile(
            leading: CircleAvatar(),
            title: Text('chann soriya'),
            subtitle: Text('Kon papa'),
            trailing: Text('fhsdf'),
          ),
        );
      },
      ),
    );
  }
}