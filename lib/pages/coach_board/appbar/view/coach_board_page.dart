import 'package:coachboard/pages/coach_board/coach_board.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class CoachBoardPage extends StatelessWidget {
   CoachBoardPage({super.key});
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return  BlocProvider<CoachBoardBloc>(
      create: (context) => CoachBoardBloc(CoachBoardState()) ,
        child:  Scaffold(appBar: PreferredSize(preferredSize:Size(double.infinity, 60,),child: CoachBordAppBar(),
        ),body:LoginPage()
        ),);
      }
    
  }
