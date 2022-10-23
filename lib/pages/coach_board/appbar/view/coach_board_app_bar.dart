import 'package:coachboard/pages/coach_board/coach_board.dart';
import 'package:flutter/material.dart';

class CoachBordAppBar extends StatelessWidget {
   CoachBordAppBar({super.key});
final controller = PageController(initialPage:0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:  AppBar(

      backgroundColor: Colors.black,
      title:
          const Text(
           'Coach Board',
           style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 25,
               color: Color.fromARGB(255, 211, 127, 2)),
        ),
     
      actions: [
        Padding(
          padding: const EdgeInsets.only(right:5.0),
          child: Column(
            children: [
              IconButton(
                icon: const Icon(Icons.circle),
               
                onPressed: () {
controller.animateToPage(0, duration: const Duration(seconds: 1), curve: Curves.easeInOut);
                },
              ),
              
              const Align(alignment: FractionalOffset.bottomCenter,
                child: Text('Full Court')),
            ],
          ),
        ),
        Padding(
         padding: const EdgeInsets.only(right:5.0),
          child: Column(
            children: [
              IconButton(
                icon: const Icon(Icons.handshake),
               
                onPressed: () {
       controller.animateToPage(1, duration: const Duration(seconds: 1), curve: Curves.easeInOut);
                },
              ),
              
              const Align(alignment: FractionalOffset.bottomCenter,
                child: Text('Hand Plays')),
            ],
          ),
        ),

        Padding(
        padding: const EdgeInsets.only(right:5.0),
          child: Column(
            children: [
              IconButton(
                icon: const Icon(Icons.safety_check),
               
                onPressed: () {
                  controller.animateToPage(2, duration: const Duration(seconds: 1), curve: Curves.easeInOut);
                },
              ),
              
              const Align(alignment: FractionalOffset.bottomCenter,
                child: Text('Plans')),
            ],
          ),
        ),

        Padding(
     padding: const EdgeInsets.only(right:5.0),
          child: Column(
            children: [
              IconButton(
                icon: const Icon(Icons.dangerous),
               
                onPressed: () {
                  controller.animateToPage(3, duration: const Duration(seconds: 1), curve: Curves.easeInOut);
                },
              ),
              
              const Align(alignment: FractionalOffset.bottomCenter,
                child: Text('Action 4')),
            ],
          ),
        ),

        Padding(
        padding: const EdgeInsets.only(right:5.0),
          child: Column(
            children: [
              IconButton(
                icon: const Icon(Icons.exit_to_app_outlined),
               
                onPressed: () {
                  controller.animateToPage(4, duration: const Duration(seconds: 1), curve: Curves.easeInOut);
                },
              ),
              
              const Align(alignment: FractionalOffset.bottomCenter,
                child: Text('Login')),
            ],
          ),
        ),
       
       
      ],
      
    ),
    body:  PageView(physics: const NeverScrollableScrollPhysics(),
    controller: controller,children: [
      Container(),
          Container(),
              Container(),
                  Container(),
      const LoginPage(),
 
    ],),
    );

    
    
  }
  
}
