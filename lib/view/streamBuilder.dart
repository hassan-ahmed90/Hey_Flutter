import 'package:flutter/material.dart';
class StreamClass extends StatefulWidget {
  const StreamClass({Key? key}) : super(key: key);

  @override
  State<StreamClass> createState() => _StreamClassState();
}



Stream<int> numberStream () async*{
  await Future.delayed(Duration(seconds: 4));
  yield 1;
  await Future.delayed(Duration(seconds: 1));
  yield 2;
  await Future.delayed(Duration(seconds: 1));
  yield 3;
}


class _StreamClassState extends State<StreamClass> {

  late Stream<int> no ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    no=numberStream();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: (){
          setState(() {
           // no=numberStream();
          });
        },
      ),
      appBar: AppBar(

      ),
      body: Center(
        child: StreamBuilder(
          stream: no,
          builder: (context,snapshot){
            if(snapshot.connectionState==ConnectionState.waiting){
              return Text('Wait',style: TextStyle(fontSize: 40),);
            }else if(snapshot.hasData){
              int number= snapshot.data!;
            return Text('$number',style: TextStyle(fontSize: 40),);
            }else{
              return Text("Sorry No Data",style: TextStyle(fontSize: 40),);
            }
          },
        ),
      ),
    );
  }
}
