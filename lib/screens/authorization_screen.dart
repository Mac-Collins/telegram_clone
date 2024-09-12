import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telegram_clone/app_styles/app_styles.dart';



class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({super.key});

  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      Container(
        padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
        child:

        Column(
          children: [

            Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  const Text("Cancel", style: AppStyles.cancel1,),


                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/next'); // Use Get.toNamed to navigate to the 'next' screen
                    },
                    child: Text("Next", style: AppStyles.next1,),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20,),

            Container(

              child: const Column(
                children: [
                  Text("Your Phone", style: AppStyles.yourphone,),
                  const SizedBox(height: 15,),
                  Text("Please confirm your country code", style: AppStyles.text1,),
                  Text("and enter your phone number", style: AppStyles.text1,),
                ],
              ),
            ),


            const SizedBox(height: 50,),


            // Container(
            //   color: Colors.grey,
            //   height: 53,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Container(
            //         color: Colors.red,
            //         padding: const EdgeInsets.only(right: 15, left: 17,),
            //         height: 53,
            //         decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            //         child:
            //         const Center(child: Text(" +1 ")),
            //       ),
            //
            //       Container(
            //         color: Colors.blue,
            //         padding: const EdgeInsets.only(right:88.5,left: 78,),
            //         height: 53,
            //         decoration:BoxDecoration(
            //           border: Border.all(color: Colors.grey)
            //         ),
            //         child:
            //           const Center(child: Text("phone number")),
            //       ),
            //     ],
            //   ),
            // ),


            //for the form

            Container(
              child: Form(
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder( ),

                    hintText: "Phone Number",
                  ),
                ),
              ),
            ),








            const SizedBox(height: 8),

            Container(
              //color: Colors.green,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // color: Colors.white,
                    child: const Text("Sync contact", style: AppStyles.sync,),
                  ),



                  Container(
                    child:  const Center(child: Icon(Icons.toggle_on_rounded,
                      size: 50, color: Colors.green,)),

                  ),
                ],
              ),
            ),





          ],//children for column
        ),



      ),
    );
  }
}
