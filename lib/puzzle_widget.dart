import 'package:eota/providers/game_repository.dart';
import 'package:flutter/material.dart';
import 'package:pretty_animated_text/pretty_animated_text.dart';
import 'package:provider/provider.dart';
import 'models/ConversationResponse.dart';
import 'models/Puzzle.dart';
import 'package:flutter_svg/flutter_svg.dart';
class PuzzleWidget extends StatefulWidget {
  final ConversationResponse? conversationResponse;

  PuzzleWidget({required this.conversationResponse});

  @override
  State<PuzzleWidget> createState() => _PuzzleWidgetState();
}

class _PuzzleWidgetState extends State<PuzzleWidget> {
  @override
  Widget build(BuildContext context) {
    var gameRepo = context.watch<GameplayRepository>();
    return FutureProvider<Puzzle?>(create: (context)=>gameRepo.getPuzzle(widget.conversationResponse!.puzzleId!),
        initialData: null,
        catchError: (context,error){
         throw Error();
        },
     child: Consumer<Puzzle?>(builder: (_,Puzzle? puzzle,child){
       return  puzzle != null ? Container(
         margin: EdgeInsets.symmetric(vertical: 8),
         alignment:Alignment.center,
         child: ConstrainedBox(
           constraints: BoxConstraints(
             maxWidth: MediaQuery.of(context).size.width,
           ),
           child: DecoratedBox(
             decoration: BoxDecoration(
               color:
               Colors.grey.shade800,
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(5),
                 topRight: Radius.circular(5),
                 bottomLeft:
                 Radius.circular(5) ,
                 bottomRight:
                 Radius.circular(5),
               ),
             ),
             child: Padding(
               padding: EdgeInsets.all(12),
               child: Column(
                 children: [
                   Row(
                     children: [
                       Container(
                         padding: EdgeInsets.all(15),

                         decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             color: Colors.grey.withOpacity(0.3)
                         ),
                         child: SvgPicture.asset('assets/svgs/julius_caesar.svg',height: 35,width: 35,colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),),

                       ),
                       BlurText(
                         text: puzzle.puzzleName,
                         duration: const Duration(seconds: 4),
                         type: AnimationType.word,
                         textStyle: const TextStyle(fontSize: 18),
                       ),
                     ],
                   ),
                   BlurText(
                     text: puzzle.puzzleDescription,
                     duration: const Duration(seconds: 4),
                     type: AnimationType.word,
                     textStyle: const TextStyle(fontSize: 18),
                   ),
                   BlurText(
                     text: puzzle.encryptedMessage,
                     duration: const Duration(seconds: 4),
                     type: AnimationType.word,
                     textStyle: const TextStyle(fontSize: 18),
                   ),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       TextButton.icon(
                         icon: Icon(Icons.help_outline),
                           onPressed: (){

                           }, label: Text("hint")),
                       TextButton(onPressed: (){}, child: Text("Decypher"))
                     ],
                   )
                 ],
               ),
             ),
           ),
         ),
       ) : Container(
         child: Center(
           child: CircularProgressIndicator(),
         ),
       );
     }),);
  }
}
