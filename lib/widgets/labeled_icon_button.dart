import 'package:flutter/material.dart';


class LabeledIconButton extends StatelessWidget {
   const LabeledIconButton({super.key,  required this.label, this.onPress, required this.iconAction,});
final VoidCallback? onPress;
final IconData iconAction;
final String label;
  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: const EdgeInsets.only(right:5.0,),
          child: Column(
            children: [
              IconButton(
                icon: Icon(iconAction),
               
                onPressed: () {
onPress?.call();
                },
              ),
              
               Align(alignment: FractionalOffset.bottomCenter,
                child: Text(label)),
            ],
          ),
        );
  }
}