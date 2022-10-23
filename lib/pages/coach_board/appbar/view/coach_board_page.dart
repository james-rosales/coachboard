import 'package:coachboard/pages/coach_board/coach_board.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class CoachBoardPage extends StatelessWidget {
   CoachBoardPage(index, {super.key, required Function(dynamic context) builder});

final controller = PageController(initialPage:0);
  @override
  
  Widget build(BuildContext context) {
    return  BlocProvider<CoachBoardBloc>(
      create: (context) => CoachBoardBloc(CoachBoardState()) ,
        child:  Scaffold(appBar:  PreferredSize(preferredSize:const Size(double.infinity, 60,),child: CoachBordAppBar(),
        ),
        ),);
      }
    
  }
