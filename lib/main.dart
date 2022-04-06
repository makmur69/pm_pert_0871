import 'package:flutter/material.dart';
import './list_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: ListView.separated(
            separatorBuilder: (context, index) => const Divider(),
            padding: const EdgeInsets.all(15),
            itemCount: dataFormApi.length,
            itemBuilder: (BuildContext context, int index){
              return ListTile(
                leading: Image.network(dataFormApi[index]['url']!),
                title: Text(dataFormApi[index]['text']!),
                subtitle: Text(dataFormApi[index]['subtitle']!),
              );
            },
            ),
        ),
      ),
    );
  }
}
