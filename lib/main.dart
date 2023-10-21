import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text("Data Table", style: TextStyle(color: Colors.white),),
      ),

      body: Center(
        child: DataTable(
            columns: [
              DataColumn(label: Text("Name"), tooltip: "Name"),
              DataColumn(label: Text("Age")),
              DataColumn(label: Text("Education")),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text("Eusuf Uddin")),
                DataCell(Text("28")),
                DataCell(Text("Bsc")),
              ]),
              DataRow(cells: [
                DataCell(Text("Imrul hasan")),
                DataCell(Text("30")),
                DataCell(Text("Bsc")),
              ]),
              DataRow(cells: [
                DataCell(Text("Siyam hasan")),
                DataCell(Text("30")),
                DataCell(Text("Msc")),
              ]),
            ]
        ),
      ),
    );
  }
}

