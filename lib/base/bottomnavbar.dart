import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:telegram_clone/controllers/controller.dart';
import 'package:telegram_clone/screens/call_log.dart';
import 'package:telegram_clone/screens/chat.dart';
import 'package:telegram_clone/screens/contacts.dart';
import 'package:telegram_clone/screens/profile.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  @override
  Widget build(BuildContext context) {

              final controller = Get.put(BottomNavigationController());

    return Scaffold(

            body: Obx(() {
              switch(controller.currentIndex.value) {

                case 0:
                  return const Contacts ();
                case 1:
                  return const CallLog ();
                case 2:
                  return const Chat();
                case 3:
                  return const Profile();
                default:
                   return const Chat();
              }
            }),

        bottomNavigationBar: Obx (() { return BottomNavigationBar (
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.currentIndex.value,
            onTap: (index) {
            controller.changeIndex(index);
            },

             unselectedItemColor: Colors.grey,
             selectedItemColor: Colors.blue,
             showSelectedLabels: true,
             showUnselectedLabels: true,


             items:const [
                 BottomNavigationBarItem(icon: Icon(Icons.contacts), label: "contacts"),
                 BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'phone'),
                 BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label:'chat'),
                  BottomNavigationBarItem(icon: ImageIcon(
                    AssetImage('assets/images/Oval.png',), // Use your image asset here
                  ), label: 'person'),
             ],
        );
    }),
    );
  }
}
