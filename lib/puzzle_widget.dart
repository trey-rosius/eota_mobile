import 'package:eota/providers/game_repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/ConversationResponse.dart';
import 'models/Puzzle.dart';

class PuzzleWidget extends StatefulWidget {
  final ConversationResponse? conversationResponse;

  PuzzleWidget({required this.conversationResponse});

  @override
  State<PuzzleWidget> createState() => _PuzzleWidgetState();
}

class _PuzzleWidgetState extends State<PuzzleWidget> {
  @override
  Widget build(BuildContext context) {
    var gameRepo = context.read<GameplayRepository>();
    return FutureProvider<Puzzle?>(create: (context)=>gameRepo.getPuzzle(widget.conversationResponse!.puzzleId!),
        initialData: null,
        catchError: (context,error){
         throw Error();
        },
     child: Consumer<Puzzle?>(builder: (_,Puzzle? puzzle,child){
       return Container(
         child: Text(puzzle!.puzzleName),
       );
     }),);
  }
}
