import 'package:flutter/material.dart';

class RefreshList extends StatefulWidget {
  const RefreshList({Key? key}) : super(key: key);

  @override
  State<RefreshList> createState() => _RefreshListState();
}

class _RefreshListState extends State<RefreshList> {

  List<String> list =[
    'Item :1',
    'Item: 2',
    'Item: 3',
    'Item: 4',
  ];
  Future refresh()async{
    setState(() {
      list=['Item 5', 'Item 6', 'Item 7', 'Item 8'];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("List Screen",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: refresh,
        child: ListView.builder(
          padding: EdgeInsets.all(9),
            itemCount: list.length,
            itemBuilder: (context,index){
              final items= list[index];
              return Center(
                child: ListTile(
                  title: Text(items),
                ),
              );
            }),
      ) ,
    );
  }
}
