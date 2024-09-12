import 'package:flutter/material.dart';

import '../app_styles/app_styles.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body:

           Container(

             padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
              child:

             Column(

               children: [
                 Container(

                   child: const Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                     children: [
                       Text("Edit", style: AppStyles.Edit,),
                       Center(child: Text('Chats', style: AppStyles.Chat)),
                       Icon(Icons.check_box),
                     ],
                   ),
                 ),

                 Container(
                   color: Colors.red,
                   child:
                   Column(
                     children: [
                       Row(
                         children: [
                           Container(
                               child: Form(
                                 child: TextFormField(
                                   decoration: const InputDecoration(
                                     border: OutlineInputBorder(),
                                     hintText: "search"
                                   ),
                                 ),
                               )

                           ),
                         ],
                       ),
                     ],


                   ),
                 )



               ],
             ),



      ),
    );



  }
}
