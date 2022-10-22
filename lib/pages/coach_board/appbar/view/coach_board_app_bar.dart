import 'package:flutter/material.dart';

class CoachBordAppBar extends StatelessWidget {
  const CoachBordAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(

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
               
                onPressed: () {},
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
               
                onPressed: () {},
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
               
                onPressed: () {},
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
               
                onPressed: () {},
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
               
                onPressed: () {},
              ),
              
              const Align(alignment: FractionalOffset.bottomCenter,
                child: Text('Login')),
            ],
          ),
        ),
       
       
      ],
    );
  }
}
