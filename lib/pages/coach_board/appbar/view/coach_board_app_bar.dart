import 'package:coachboard/pages/coach_board/coach_board.dart';
import 'package:coachboard/widgets/labeled_icon_button.dart';
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
       LabeledIconButton(label: 'Full Court', iconAction: Icons.circle, onPress: () {
           controller.animateToPage(0, duration: const Duration(seconds: 1), curve: Curves.easeInOut);
       },),
     
      LabeledIconButton(label: 'Hand Plays', iconAction: Icons.circle, onPress: () {
           controller.animateToPage(1, duration: const Duration(seconds: 1), curve: Curves.easeInOut);
       },),

        LabeledIconButton(label: 'Drawing', iconAction: Icons.circle, onPress: () {
           controller.animateToPage(2, duration: const Duration(seconds: 1), curve: Curves.easeInOut);
       },),

        LabeledIconButton(label: 'Half Court', iconAction: Icons.circle, onPress: () {
           controller.animateToPage(3, duration: const Duration(seconds: 1), curve: Curves.easeInOut);
       },),

        LabeledIconButton(label: 'Login', iconAction: Icons.circle, onPress: () {
           controller.animateToPage(4, duration: const Duration(seconds: 1), curve: Curves.easeInOut);
       },),
       
       
      ],
      
    ),
    body:  PageView(physics: const NeverScrollableScrollPhysics(),
    controller: controller,children: [
      Text('index 0'),
           Text('index 1'),
            Text('index 3'),
                  Text('index 4'),
      const LoginPage(),
 
    ],),
    );

    
    
  }
  
}
