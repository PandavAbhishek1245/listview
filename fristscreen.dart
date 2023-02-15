import 'package:flutter/material.dart';

class Fristscreen extends StatefulWidget {
  const Fristscreen({Key? key}) : super(key: key);

  @override
  State<Fristscreen> createState() => _FristscreenState();
}

class _FristscreenState extends State<Fristscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.cyan,
       appBar: AppBar(
         backgroundColor: Colors.green,
         title: Text("Listview"),
       ),


       // body:ListView(
       //  padding: EdgeInsets.all(20),
       //  children: [
       //    CircleAvatar(
       //      maxRadius: 70,
       //      backgroundColor: Colors.green,
       //      child: Icon(Icons.person, color: Colors.white, size: 50),
       //    ),
       //    Center(
       //      child: Text(
       //        'Sooraj S Nair',
       //        style: TextStyle(
       //          fontSize: 50,fontWeight: FontWeight.bold,
       //        ),
       //      ),
       //    ),
       //    Text(
       //      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a gallery of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum,It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
       //      style: TextStyle(
       //        fontSize: 20,
       //      ),
       //    ),
      //
      //   ],
      // ),



      // body:ListView.builder(
      //   itemCount: 15,
      //   itemBuilder: (context, position) {
      //     return Card(
      //       child: Padding(
      //         padding: const EdgeInsets.all(20.0),
      //         child: Text(
      //           position.toString(),
      //           style: TextStyle(fontSize: 22.0),
      //         ),
      //       ),
      //     );
      //   },
      // ),



      body:ListView.separated(
        itemBuilder: (context, index){
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'List Item $index',
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Card(
            color: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'Separator $index',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        },
        itemCount: 20,
      ),

    );
  }
}
